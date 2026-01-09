import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth/presentation/providers/auth_user_state.dart';
import 'login_required_dialog.dart';
import 'target_screen_provider.dart';

/// Helper functions for authentication guards and protected actions.
///
/// Provides reusable functions to check authentication status and handle
/// guest user interactions with protected routes/actions.
class AuthGuardHelper {
  /// Checks if user is authenticated, otherwise shows login dialog.
  ///
  /// For tab navigation (Cart/Profile/Orders):
  /// - If authenticated: calls [onAuthenticated] callback
  /// - If guest: saves current route as targetScreen, shows dialog, navigates to login
  ///
  /// For actions (Add to Cart, etc.):
  /// - If authenticated: calls [onAuthenticated] callback
  /// - If guest: saves current route as targetScreen, shows dialog, navigates to login
  ///
  /// Usage:
  /// ```dart
  /// await AuthGuardHelper.requireAuthOrShowDialog(
  ///   context: context,
  ///   ref: ref,
  ///   onAuthenticated: () {
  ///     // Proceed with action
  ///   },
  /// );
  /// ```
  static Future<void> requireAuthOrShowDialog({
    required BuildContext context,
    required WidgetRef ref,
    required VoidCallback onAuthenticated,
  }) async {
    // Check if user is authenticated
    final isAuthenticated = ref.read(isAuthenticatedProvider);

    if (isAuthenticated) {
      // User is authenticated, proceed with action
      onAuthenticated();
      return;
    }

    // User is guest - save current route and show dialog
    final currentRoute = GoRouterState.of(context).matchedLocation;
    ref.read(targetScreenProvider.notifier).set(currentRoute);

    // Show login dialog
    final shouldContinue = await LoginRequiredDialog.show(context: context);

    // If user pressed Continue, navigation to login is handled by dialog
    // If user pressed Cancel or dismissed, do nothing (stay on current screen)
    if (shouldContinue == false) {
      // User cancelled - clear target screen
      ref.read(targetScreenProvider.notifier).clear();
    }
  }

  /// Checks if user is authenticated for tab navigation.
  ///
  /// For protected tabs (Cart, Order, Profile):
  /// - If authenticated: allows navigation
  /// - If guest: saves target route, shows dialog, prevents navigation
  ///
  /// Returns `true` if navigation should proceed, `false` if blocked.
  ///
  /// Usage:
  /// ```dart
  /// final shouldNavigate = await AuthGuardHelper.canNavigateToTab(
  ///   context: context,
  ///   ref: ref,
  ///   targetRoute: RouteName.cart,
  /// );
  /// if (shouldNavigate) {
  ///   // Navigate to tab
  /// }
  /// ```
  static Future<bool> canNavigateToTab({
    required BuildContext context,
    required WidgetRef ref,
    required String targetRoute,
  }) async {
    // Check if user is authenticated
    final isAuthenticated = ref.read(isAuthenticatedProvider);

    if (isAuthenticated) {
      // User is authenticated, allow navigation
      return true;
    }

    // User is guest - save target route and show dialog
    ref.read(targetScreenProvider.notifier).set(targetRoute);

    // Show login dialog
    final shouldContinue = await LoginRequiredDialog.show(context: context);

    // If user pressed Continue, navigation to login is handled by dialog
    // If user pressed Cancel or dismissed, prevent navigation
    if (shouldContinue == false) {
      // User cancelled - clear target screen
      ref.read(targetScreenProvider.notifier).clear();
    }

    // Always return false to prevent navigation (user must login first)
    return false;
  }
}
