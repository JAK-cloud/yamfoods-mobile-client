import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:retry/retry.dart';

/// Interceptor for retrying failed requests
///
/// This interceptor automatically retries requests that fail due to:
/// - Connection timeouts
/// - Send/receive timeouts
/// - Service unavailable (503) errors
///
/// Retries use exponential backoff with randomization to prevent thundering herd.
class RetryInterceptor extends Interceptor {
  final Dio _dio;
  final int _retries;
  final List<Duration> _retryDelays;
  final Logger _logger;

  /// Creates a RetryInterceptor instance
  ///
  /// [dio] - Dio instance for retrying requests
  /// [logger] - Logger instance for logging retry attempts
  /// [retries] - Maximum number of retry attempts (default: 3)
  /// [retryDelays] - List of delays between retries (default: 1s, 2s, 3s)
  RetryInterceptor({
    required Dio dio,
    required Logger logger,
    int retries = 3,
    List<Duration>? retryDelays,
  }) : _dio = dio,
       _logger = logger,
       _retries = retries,
       _retryDelays =
           retryDelays ??
           const [
             Duration(seconds: 1),
             Duration(seconds: 2),
             Duration(seconds: 3),
           ];

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    if (!_shouldRetry(err)) {
      handler.next(err);
      return;
    }

    _logger.d('Retrying request to ${err.requestOptions.path}');

    try {
      final response = await retry(
        () => _dio.request(
          err.requestOptions.path,
          data: err.requestOptions.data,
          queryParameters: err.requestOptions.queryParameters,
          cancelToken: err.requestOptions.cancelToken,
          onReceiveProgress: err.requestOptions.onReceiveProgress,
          onSendProgress: err.requestOptions.onSendProgress,
          options: Options(
            method: err.requestOptions.method,
            headers: err.requestOptions.headers,
            contentType: err.requestOptions.contentType,
            responseType: err.requestOptions.responseType,
            extra: err.requestOptions.extra,
          ),
        ),
        retryIf: (e) => e is DioException && _shouldRetry(e),
        maxAttempts: _retries,
        delayFactor: _retryDelays.first,
        randomizationFactor: 0.25,
        maxDelay: _retryDelays.last,
      );

      _logger.d('Retry successful for ${err.requestOptions.path}');
      handler.resolve(response);
    } catch (e) {
      _logger.e('Retry failed for ${err.requestOptions.path}: $e');
      handler.next(err);
    }
  }

  /// Determines if a request should be retried
  ///
  /// Retries are attempted for:
  /// - Connection timeouts
  /// - Send/receive timeouts
  /// - Service unavailable (503) errors
  bool _shouldRetry(DioException err) {
    return err.type == DioExceptionType.connectionTimeout ||
        err.type == DioExceptionType.sendTimeout ||
        err.type == DioExceptionType.receiveTimeout ||
        err.response?.statusCode == 503; // Service Unavailable
  }
}
