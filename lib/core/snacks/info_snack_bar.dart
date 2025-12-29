import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

class InfoSnackBar {
  static void show(
    BuildContext context, {
    required String message,
    Duration duration = const Duration(seconds: 3),
  }) {
    Flushbar(
      message: message,
      duration: duration,
      backgroundColor: Colors.blue.withValues(alpha: 0.9),
      margin: const EdgeInsets.all(12),
      borderRadius: BorderRadius.circular(8),
      icon: const Icon(Icons.info_outline, color: Colors.white),
      flushbarPosition: FlushbarPosition.TOP,
    ).show(context);
  }
}
