/// Central place for route names/paths used by the app router.
///
/// Keeping them here avoids hardcoded strings and makes refactoring easier.
class RouteName {
  RouteName._();

  /// Initial splash / bootstrap route.
  static const String splash = '/';

  /// Onboarding flow.
  static const String onboarding = '/onboarding';

  /// Main home (after branch selection etc. will be wired later).
  static const String home = '/home';

  /// Auth routes.
  static const String login = '/auth/login';
  static const String register = '/auth/register';
  static const String forgotPassword = '/auth/forgot-password';
  static const String savePhone = '/auth/save-phone';
  static const String verifyPhone = '/auth/verify-phone';
  static const String validateOtp = '/auth/validate-otp';
  static const String resetPassword = '/auth/reset-password';

  /// Location permission route.
  static const String locationPermission = '/location-permission';

  /// Cart route.
  static const String cart = '/cart';

  /// Order route.
  static const String order = '/order';

  /// Profile route.
  static const String profile = '/profile';

  /// Branches list route.
  static const String branches = '/branches';
}
