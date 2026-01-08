import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../providers/core_providers.dart';
import '../../services/token_validator.dart';
import '../interceptors/auth_interceptor.dart';
import '../interceptors/logging_interceptor.dart';
import '../interceptors/retry_interceptor.dart';
import '../../../features/auth/presentation/providers/auth_providers.dart';

part 'dio_client.g.dart';

/// Base Dio client provider (without auth interceptor)
///
/// This creates a Dio instance with base configuration and non-auth interceptors.
/// This is used to break the circular dependency with auth providers.
///
/// The full `dioClientProvider` adds the AuthInterceptor on top of this base client.
///
/// **CRITICAL:** Uses `keepAlive: true` because this is used by 8+ features (auth, branch,
/// category, subcategory, product, achievement, promocode, promo_banner).
/// Recreating it causes unnecessary overhead and interceptor recreation.
@Riverpod(keepAlive: true)
Dio baseDioClient(Ref ref) {
  final envConfig = ref.watch(envConfigProvider);
  final logger = ref.watch(loggerProvider);

  // Create Dio instance with base configuration
  final dio = Dio(
    BaseOptions(
      baseUrl: envConfig.baseUrl,
      connectTimeout: envConfig.connectTimeout,
      receiveTimeout: envConfig.receiveTimeout,
      headers: {'content-type': 'application/json'},
    ),
  );

  // Add non-auth interceptors:
  // 1. Retry (retries failed requests)
  // 2. Logging (logs requests/responses) - should be last
  dio.interceptors.addAll([
    RetryInterceptor(
      dio: dio,
      logger: logger,
      retries: 3,
      retryDelays: const [
        Duration(seconds: 1),
        Duration(seconds: 2),
        Duration(seconds: 3),
      ],
    ),
    LoggingInterceptor(),
  ]);

  return dio;
}

/// External API Dio client provider (for APIs with different base URLs)
///
/// This creates a Dio instance specifically for external APIs (like Gebeta Maps)
/// that have different base URLs than our backend. The baseUrl is intentionally
/// left empty since Retrofit services will specify their own baseUrl via the
/// @RestApi annotation.
///
/// This provider:
/// - Uses hardcoded timeout values for external APIs
/// - Does NOT set a baseUrl (let Retrofit handle it via annotation)
/// - Does NOT include auth interceptor (external APIs handle their own auth)
///
/// **CRITICAL:** Uses `keepAlive: true` to avoid unnecessary recreation.
@Riverpod(keepAlive: true)
Dio externalApiDioClient(Ref ref) {
  final logger = ref.watch(loggerProvider);

  // Create Dio instance without baseUrl - Retrofit will use annotation's baseUrl
  final dio = Dio(
    BaseOptions(
      // No baseUrl - let Retrofit @RestApi annotation handle it
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
      headers: {'content-type': 'application/json'},
    ),
  );

  // Add non-auth interceptors:
  // 1. Retry (retries failed requests)
  // 2. Logging (logs requests/responses) - should be last
  dio.interceptors.addAll([
    RetryInterceptor(
      dio: dio,
      logger: logger,
      retries: 3,
      retryDelays: const [
        Duration(seconds: 1),
        Duration(seconds: 2),
        Duration(seconds: 3),
      ],
    ),
    LoggingInterceptor(),
  ]);

  return dio;
}

/// Dio client provider with all interceptors configured (including auth)
///
/// This provider creates a Dio instance with:
/// 1. Base configuration (URL, timeouts, headers)
/// 2. Auth interceptor (token management) - added first
/// 3. Retry interceptor (automatic retries)
/// 4. Logging interceptor (request/response logging)
///
/// The interceptors are added in the correct order to ensure proper execution.
///
/// Note: This uses baseDioClient and adds AuthInterceptor to avoid circular dependency.
/// Auth providers are watched here to inject into AuthInterceptor.
///
/// **CRITICAL:** Uses `keepAlive: true` because this is used by 3+ authenticated features
/// (review, cart, order). Recreating it causes expensive auth interceptor recreation
/// and re-watching of auth providers.
@Riverpod(keepAlive: true)
Future<Dio> dioClient(Ref ref) async {
  // Get base Dio client (without auth interceptor)
  final baseDio = ref.watch(baseDioClientProvider);

  // Get dependencies for AuthInterceptor
  final logger = ref.watch(loggerProvider);
  final authRepository = await ref.watch(authRepositoryProvider.future);
  final authLocalDataSource = await ref.watch(
    authLocalDataSourceProvider.future,
  );
  final tokenValidator = ref.watch(tokenValidatorProvider);

  // Create a new Dio instance with the same configuration as baseDio
  // We need to clone it to add the auth interceptor without modifying the base
  final dio = Dio(
    BaseOptions(
      baseUrl: baseDio.options.baseUrl,
      connectTimeout: baseDio.options.connectTimeout,
      receiveTimeout: baseDio.options.receiveTimeout,
      headers: baseDio.options.headers,
    ),
  );

  // Add interceptors in correct order:
  // 1. Auth (adds tokens, handles refresh) - must be first
  // 2. Retry (retries failed requests)
  // 3. Logging (logs requests/responses) - should be last
  dio.interceptors.addAll([
    AuthInterceptor(
      authRepository: authRepository,
      localDataSource: authLocalDataSource,
      tokenValidator: tokenValidator,
      logger: logger,
    ),
    RetryInterceptor(
      dio: dio,
      logger: logger,
      retries: 3,
      retryDelays: const [
        Duration(seconds: 1),
        Duration(seconds: 2),
        Duration(seconds: 3),
      ],
    ),
    LoggingInterceptor(),
  ]);

  // Store dio instance in request options for retry logic in AuthInterceptor
  dio.interceptors.add(
    InterceptorsWrapper(
      onRequest: (options, handler) {
        options.extra['dio'] = dio;
        handler.next(options);
      },
    ),
  );

  return dio;
}
