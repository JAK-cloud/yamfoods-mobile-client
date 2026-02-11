import 'dart:async';

import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

import '../../../core/errors/failure.dart';
import '../../../core/services/token_validator.dart';
import '../../../features/auth/data/datasources/auth_local_data_source.dart';
import '../../../features/auth/domain/repositories/auth_repository.dart';
import '../api/api_routes.dart';

/// Interceptor for handling authentication tokens and refresh logic
///
/// Responsibilities:
/// - Adds Authorization header to protected requests
/// - Proactively refreshes tokens before they expire
/// - Reactively refreshes tokens on 401 errors
/// - Prevents concurrent token refresh operations
class AuthInterceptor extends Interceptor {
  final AuthRepository _authRepository;
  final AuthLocalDataSource _localDataSource;
  final TokenValidator _tokenValidator;
  final Logger _logger;

  bool _isRefreshing = false;
  Completer<void>? _refreshCompleter;

  /// Creates an AuthInterceptor instance
  ///
  /// All dependencies are injected via constructor following DI best practices.
  AuthInterceptor({
    required AuthRepository authRepository,
    required AuthLocalDataSource localDataSource,
    required TokenValidator tokenValidator,
    required Logger logger,
  }) : _authRepository = authRepository,
       _localDataSource = localDataSource,
       _tokenValidator = tokenValidator,
       _logger = logger;

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    // Skip authentication for unprotected endpoints
    if (_isUnprotectedEndpoint(options.path)) {
      handler.next(options);
      return;
    }

    final accessToken = await _localDataSource.getAccessToken();

    if (accessToken == null) {
      // Protected endpoint + no access token => user is not authenticated.
      // Don't hit the backend (would just 401 and create noise).
      // We cancel the request and only log (no token refresh, no retries).
      _logger.d(
        'Skipping request to ${options.path} - not authenticated (no access token)',
      );
      handler.reject(
        DioException(
          requestOptions: options,
          type: DioExceptionType.cancel,
          error: 'Not authenticated',
        ),
      );
      return;
    }

    // Proactive token refresh if expired or about to expire
    if (_tokenValidator.isTokenExpired(accessToken)) {
      _logger.d('Proactive token refresh for ${options.path}');
      await _refreshTokenIfNeeded();
      final updatedToken = await _localDataSource.getAccessToken();
      if (updatedToken != null) {
        options.headers['Authorization'] = 'Bearer $updatedToken';
      }
    } else {
      options.headers['Authorization'] = 'Bearer $accessToken';
    }

    handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    // Handle 401 Unauthorized - reactive token refresh
    if (err.response?.statusCode == 401 &&
        !_isUnprotectedEndpoint(err.requestOptions.path) &&
        err.requestOptions.extra['authRetry'] != true) {
      // If the original request didn't include an Authorization header, it was
      // effectively a guest/unauthenticated request. In that case, DO NOT try to
      // refresh tokens (guests won't have refresh tokens) — just bubble up the 401.
      final authorizationHeader = err.requestOptions.headers['Authorization']
          ?.toString()
          .trim();
      if (authorizationHeader == null || authorizationHeader.isEmpty) {
        _logger.d(
          '401 on unauthenticated request for ${err.requestOptions.path} - skipping token refresh',
        );
        handler.reject(err);
        return;
      }

      err.requestOptions.extra['authRetry'] = true;
      _logger.d('Reactive token refresh on 401 for ${err.requestOptions.path}');

      try {
        await _refreshTokenIfNeeded();
        final updatedToken = await _localDataSource.getAccessToken();

        if (updatedToken == null) {
          handler.reject(err);
          return;
        }

        // Retry the original request with new token
        final dio = err.requestOptions.extra['dio'] as Dio?;
        if (dio == null) {
          _logger.e('Dio instance not found in request options');
          handler.reject(err);
          return;
        }

        err.requestOptions.headers['Authorization'] = 'Bearer $updatedToken';

        final response = await dio.request(
          err.requestOptions.path,
          data: err.requestOptions.data,
          queryParameters: err.requestOptions.queryParameters,
          options: Options(
            method: err.requestOptions.method,
            headers: err.requestOptions.headers,
            extra: err.requestOptions.extra,
          ),
        );

        _logger.d('Retry successful for ${err.requestOptions.path}');
        handler.resolve(response);
      } catch (e) {
        _logger.e('Retry failed for ${err.requestOptions.path}: $e');
        handler.reject(err);
      }
    } else {
      handler.reject(err);
    }
  }

  /// Checks if endpoint doesn't require authentication
  ///
  /// Uses ApiRoutes constants to determine unprotected endpoints.
  /// Note: For routes with path parameters (e.g., {productId}), we check
  /// the base path without the parameter placeholder.
  bool _isUnprotectedEndpoint(String path) {
    final unprotectedPaths = [
      ApiRoutes.register,
      ApiRoutes.login,
      ApiRoutes.saveUserPhone,
      ApiRoutes.verifyPhone,
      ApiRoutes.requestResetPasswordOtp,
      ApiRoutes.validateOtp,
      ApiRoutes.resetPassword,
      ApiRoutes.refreshToken,
      ApiRoutes.getAllBranches,
      // Review endpoints - getAllReviews is unprotected (guests can view)
      // create, update, delete are protected and require authentication
      // Check base path without {productId} placeholder
      ApiRoutes.getAllReviews,
      ApiRoutes.getTermsAndConditions,
      ApiRoutes.getPrivacyPolicy,
    ];

    return unprotectedPaths.any((route) => path.contains(route));
  }

  /// Refreshes token if needed, preventing concurrent refreshes
  ///
  /// Uses a Completer to ensure only one refresh operation happens at a time.
  /// Other requests will wait for the ongoing refresh to complete.
  Future<void> _refreshTokenIfNeeded() async {
    if (_isRefreshing) {
      await _refreshCompleter?.future;
      return;
    }

    _isRefreshing = true;
    _refreshCompleter = Completer<void>();

    try {
      final refreshToken = await _localDataSource.getRefreshToken();
      if (refreshToken == null) {
        throw const Failure.auth(message: 'No refresh token found');
      }

      final result = await _authRepository.refreshTokens();

      await result.fold(
        (failure) async {
          _logger.e('Refresh failed: ${failure.toString()}');

          if (!_refreshCompleter!.isCompleted) {
            _refreshCompleter!.completeError(failure);
          }

          // Clear tokens on auth failure
          if (failure is AuthFailure) {
            await _localDataSource.clearTokens();
          }

          throw failure;
        },
        (newTokens) async {
          await _localDataSource.saveTokens(newTokens);
          _logger.d('Token refreshed successfully');

          if (!_refreshCompleter!.isCompleted) {
            _refreshCompleter!.complete();
          }
        },
      );
    } catch (e) {
      _logger.e('Refresh error: $e');

      if (!_refreshCompleter!.isCompleted) {
        _refreshCompleter!.completeError(e);
      }

      rethrow;
    } finally {
      _isRefreshing = false;
      _refreshCompleter = null;
    }
  }
}
