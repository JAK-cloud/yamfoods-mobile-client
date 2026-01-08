import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app/app.dart';
//progress_tracker: ^0.0.16, connection_notifier: ^2.0.1, order_tracker: ^0.0.2
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Load environment variables from .env (if present)
  // This is optional - app will use default values if .env is missing
  try {
    await dotenv.load(fileName: '.env');
  } catch (e) {
    // .env file is optional - EnvConfig.fromEnv() will handle this gracefully
    // by checking dotenv.isInitialized and using defaults
    debugPrint('Note: .env file not found. Using default configuration.');
  }

  runApp(const ProviderScope(child: YamFoodsApp()));
}
