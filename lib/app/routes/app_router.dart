import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/permissions/location_permission_screen.dart';
import '../../core/services/snackbar_service.dart';
import '../../features/auth/domain/entities/user.dart';
import '../../features/auth/presentation/screens/login_screen.dart';
import '../../features/auth/presentation/screens/register_screen.dart';
import '../../features/auth/presentation/screens/request_reset_password_otp_screen.dart';
import '../../features/auth/presentation/screens/reset_password_screen.dart';
import '../../features/auth/presentation/screens/save_phone_number_screen.dart';
import '../../features/auth/presentation/screens/validate_otp_screen.dart';
import '../../features/auth/presentation/screens/verify_phone_screen.dart';
import '../../features/splash/splash_screen.dart';
import '../components/bottom_nav_screen.dart';
import 'route_names.dart';
import '../../features/onboarding/presentation/screens/onboarding_screen.dart';
import '../../features/branch/presentation/screens/branch_selection_screen.dart';
import '../../features/category/domain/entities/category.dart';
import '../../features/category/presentation/screens/category_screen.dart';
import '../../features/home/screens/home_screen.dart';

/// Global app router configuration using go_router.
///
/// For now this is a minimal setup with placeholder screens.
/// Feature-specific routes (auth, onboarding, branches, etc.) will be added
/// gradually following the same pattern.
final GoRouter appRouter = GoRouter(
  // CRITICAL: This navigatorKey is required for SnackbarService to work properly.
  // Without it, snackbars/toasts (like snackbar.showError()) won't display because
  // they need access to the root Navigator's overlay context to show above all routes.
  // SnackbarService uses this key to get the overlay context for displaying snackbars
  // that appear on top of the entire navigation stack, regardless of the current route.
  navigatorKey: SnackbarService.rootNavigatorKey,
  initialLocation: RouteName.home,
  routes: [
    GoRoute(
      path: RouteName.splash,
      name: RouteName.splash,
      builder: (context, state) => const SplashScreen(),
    ),

    GoRoute(
      path: RouteName.login,
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: RouteName.register,
      builder: (context, state) => const RegisterScreen(),
    ),
    GoRoute(
      path: RouteName.forgotPassword,
      builder: (context, state) => const RequestResetPasswordOtpScreen(),
    ),
    GoRoute(
      path: RouteName.resetPassword,
      builder: (context, state) {
        final phone = state.extra as String;
        return ResetPasswordScreen(phoneNumber: phone);
      },
    ),
    GoRoute(
      path: RouteName.savePhone,
      builder: (context, state) {
        // extra is required, so we cast to int
        final userId = state.extra as int;
        return SavePhoneNumberScreen(userId: userId);
      },
    ),
    GoRoute(
      path: RouteName.verifyPhone,
      builder: (context, state) {
        final extra = state.extra;
        if (extra is User) {
          final user = state.extra as User;
          return VerifyPhoneScreen(user: user);
        } else {
          final phone = state.extra as String;
          return VerifyPhoneScreen(phone: phone);
        }
      },
    ),
    GoRoute(
      path: RouteName.validateOtp,
      builder: (context, state) {
        final phone = state.extra as String;
        return ValidateOtpScreen(phoneNumber: phone);
      },
    ),
    GoRoute(
      path: RouteName.locationPermission,
      name: RouteName.locationPermission,
      builder: (context, state) => const LocationPermissionScreen(),
    ),
    GoRoute(
      path: RouteName.onboarding,
      name: RouteName.onboarding,
      builder: (context, state) => const OnboardingScreen(),
    ),
    GoRoute(
      path: RouteName.branches,
      name: RouteName.branches,
      builder: (context, state) => const BranchSelectionScreen(),
    ),
    GoRoute(
      path: RouteName.categoryScreen,
      builder: (context, state) {
        final category = state.extra as Category;
        return CategoryScreen(category: category);
      },
    ),
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return BottomNavScreen(navigationShell: navigationShell);
      },
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: RouteName.home,
              builder: (context, state) => const HomeScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: RouteName.cart,
              builder: (context, state) => const _PlaceholderScreen(
                title: 'Cart',
                message: 'Cart screen will be implemented here.',
              ),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: RouteName.order,
              builder: (context, state) => const _PlaceholderScreen(
                title: 'Order',
                message: 'Order screen will be implemented here.',
              ),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: RouteName.profile,
              builder: (context, state) => const _PlaceholderScreen(
                title: 'Profile',
                message: 'Profile screen will be implemented here.',
              ),
            ),
          ],
        ),
      ],
    ),
  ],
);

/// Generic placeholder screen used until real screens are implemented.
class _PlaceholderScreen extends StatelessWidget {
  final String title;
  final String message;

  const _PlaceholderScreen({required this.title, required this.message});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(child: Text(message, textAlign: TextAlign.center)),
    );
  }
}
