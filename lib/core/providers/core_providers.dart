import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../constants/env_config.dart';

part 'core_providers.g.dart';

/// Environment configuration provider
///
/// Loads configuration from .env file using flutter_dotenv.
/// Make sure to call `dotenv.load()` in main.dart before using this provider.
@Riverpod(keepAlive: true)
EnvConfig envConfig(Ref ref) {
  return EnvConfig.fromEnv();
}

/// Logger provider (singleton)
///
/// Provides a configured Logger instance for the entire app.
/// Uses PrettyPrinter for better formatted logs in debug mode.
@Riverpod(keepAlive: true)
Logger logger(Ref ref) {
  return Logger(
    printer: PrettyPrinter(
      methodCount: 2,
      errorMethodCount: 8,
      lineLength: 120,
      colors: true,
      printEmojis: true,
    ),
  );
}

/// FlutterSecureStorage provider (singleton)
///
/// Provides a secure storage instance for storing sensitive data
/// like authentication tokens.
@Riverpod(keepAlive: true)
FlutterSecureStorage secureStorage(Ref ref) {
  return const FlutterSecureStorage();
}

/// SharedPreferences provider (async, singleton)
///
/// Provides SharedPreferences instance for storing non-sensitive data.
/// This is async because SharedPreferences.getInstance() is async.
@Riverpod(keepAlive: true)
Future<SharedPreferences> sharedPreferences(Ref ref) async {
  return await SharedPreferences.getInstance();
}
