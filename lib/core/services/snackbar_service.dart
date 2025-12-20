import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


import '../../core/errors/failure.dart';
import '../snacks/error_snack_bar.dart';
import '../snacks/success_snack_bar.dart';

class SnackbarService {
  static final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();

  BuildContext? get _overlayContext {
    final state = rootNavigatorKey.currentState;
    // Prefer the overlay context so the flushbar attaches above all routes
    return state?.overlay?.context ?? state?.context;
  }

  void _schedule(VoidCallback cb) {
    WidgetsBinding.instance.addPostFrameCallback((_) => cb());
  }

  void showSuccess(String message) {
    final ctx = _overlayContext;
    if (ctx == null) return;
    _schedule(() {
      SuccessSnackBar.show(ctx, message: message);
    });
  }

  void showError(Failure failure) {
    final ctx = _overlayContext;
    if (ctx == null) return;
    _schedule(() {
      ErrorSnackBar.show(ctx, failure: failure);
    });
  }

  // void showWarning(String message) {
  //   final ctx = _overlayContext;
  //   if (ctx == null) return;
  //   _schedule(() {
  //     WarningSnackBar.show(ctx, message: message, duration: const Duration(seconds: 3));
  //   });
  // }

  // void showInfo(String message) {
  //   final ctx = _overlayContext;
  //   if (ctx == null) return;
  //   _schedule(() {
  //     InfoSnackBar.show(ctx, message: message, duration: const Duration(seconds: 3));
  //   });
  // }
}

final snackbarServiceProvider = Provider<SnackbarService>((ref) => SnackbarService());


