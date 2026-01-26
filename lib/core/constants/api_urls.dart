/// API URL constants for different environments
class ApiUrls {
  /// Development API base URL
  static const String development = 'http://192.168.224.58:3000/api';

  /// Production API base URL
  static const String production = 'http://192.168.224.58:3000/api';

  /// Get the appropriate API URL based on environment
  ///
  /// Returns development URL if [isDevelopment] is true, otherwise returns production URL
  static String getBaseUrl({bool isDevelopment = true}) {
    return isDevelopment ? development : production;
  }

  static String getPortalImageBaseUrl() {
    return 'http://192.168.224.58:3000';
  }

  static String getClientImageBaseUrl() {
    return 'http://192.168.224.58:3000';
  }
}
