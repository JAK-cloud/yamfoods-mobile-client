import 'api_urls.dart';

/// Environment configuration loaded from .env file
///
/// This class provides centralized access to environment variables
/// with sensible defaults if values are not found.
class EnvConfig {
  final String baseUrl;
  final Duration connectTimeout;
  final Duration receiveTimeout;

  const EnvConfig({
    required this.baseUrl,
    required this.connectTimeout,
    required this.receiveTimeout,
  });

  /// Create from environment variables loaded by flutter_dotenv
  ///
  /// Falls back to default values if environment variables are not set
  /// or if dotenv is not initialized.
  factory EnvConfig.fromEnv({bool isDevelopment = false}) {
    // Check if dotenv is initialized before accessing it
    
      // Return defaults if dotenv is not initialized
      return EnvConfig(
        baseUrl: ApiUrls.getBaseUrl(isDevelopment: isDevelopment),
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 10),
      );
    
  }
}
