import 'package:flutter_dotenv/flutter_dotenv.dart';

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
  factory EnvConfig.fromEnv() {
    // Check if dotenv is initialized before accessing it
    if (!dotenv.isInitialized) {
      // Return defaults if dotenv is not initialized
      return const EnvConfig(
        baseUrl: 'https://api.yamfoods.com/api',
        connectTimeout: Duration(seconds: 10),
        receiveTimeout: Duration(seconds: 10),
      );
    }

    return EnvConfig(
      baseUrl: dotenv.env['BASE_URL'] ?? 'https://api.yamfoods.com/api',
      connectTimeout: Duration(
        seconds: int.tryParse(dotenv.env['CONNECT_TIMEOUT'] ?? '10') ?? 10,
      ),
      receiveTimeout: Duration(
        seconds: int.tryParse(dotenv.env['RECEIVE_TIMEOUT'] ?? '10') ?? 10,
      ),
    );
  }
}
