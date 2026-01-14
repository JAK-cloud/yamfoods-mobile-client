/// API URL constants for different environments
class ApiUrls {
  /// Development API base URL
  static const String development = 'http://192.168.141.58:3000/api';

  /// Production API base URL
  static const String production = 'https://api.yamfoods.com/api/';

  /// Get the appropriate API URL based on environment
  ///
  /// Returns development URL if [isDevelopment] is true, otherwise returns production URL
  static String getBaseUrl({bool isDevelopment = false}) {
    return isDevelopment ? development : production;
  }

  static String getPortalImageBaseUrl() {
    return 'https://api.portal.yamfoods.com/';
  }

  static String getClientImageBaseUrl() {
    return 'https://api.yamfoods.com';
  }
}
