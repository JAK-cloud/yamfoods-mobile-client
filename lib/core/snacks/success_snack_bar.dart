import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

class SuccessSnackBar {
  static void show(
    BuildContext context, {
    required String message,
    Duration duration = const Duration(seconds: 2),
  }) {
    Flushbar(
      message: message,
      duration: duration,
      backgroundColor: Colors.green.shade700,
      margin: const EdgeInsets.all(12),
      borderRadius: BorderRadius.circular(8),
      icon: const Icon(Icons.check_circle_outline, color: Colors.white),
      flushbarPosition: FlushbarPosition.TOP,
    ).show(context);
  }
}
