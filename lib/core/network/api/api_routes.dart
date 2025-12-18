/// Central API routes configuration.
///
/// This is the single source of truth for all backend API endpoints.
/// All feature-specific API services should use these constants instead of
/// hardcoded strings to ensure consistency and easier maintenance.
class ApiRoutes {
  // Private constructor to prevent instantiation
  ApiRoutes._();

  // Auth endpoints
  static const String _authBase = '/user';

  static const String register = '$_authBase/register';
  static const String saveUserPhone = '$_authBase/save-user-phone';
  static const String verifyPhone = '$_authBase/verify-phone';
  static const String login = '$_authBase/login';
  static const String logout = '$_authBase/logout';
  static const String refreshToken = '$_authBase/refresh-token';
  static const String requestResetPasswordOtp =
      '$_authBase/request-reset-password-otp';
  static const String validateOtp = '$_authBase/validate-otp';
  static const String resetPassword = '$_authBase/reset-password';
}
