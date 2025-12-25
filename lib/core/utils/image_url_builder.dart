/// Utility class for building image URLs from base URL and image paths.
///
/// Provides centralized image URL construction logic that can be reused
/// across the entire application.
class ImageUrlBuilder {
  ImageUrlBuilder._();

  /// Builds a full image URL from base URL and image path.
  ///
  /// Handles:
  /// - Already complete URLs (http:// or https://)
  /// - Relative paths that need base URL prepending
  /// - Trailing slashes in base URL
  ///
  /// [baseUrl] - The base URL of the API/server (e.g., "https://api.example.com/api")
  /// [imagePath] - The image path from the API (e.g., "product.png" or "/uploads/product.png")
  /// [imageBasePath] - Optional base path for images (defaults to "/uploads")
  ///
  /// Returns the complete image URL.
  ///
  /// Example:
  /// ```dart
  /// final url = ImageUrlBuilder.build(
  ///   baseUrl: 'https://api.example.com/api',
  ///   imagePath: 'product.png',
  /// );
  /// // Returns: 'https://api.example.com/api/uploads/product.png'
  /// ```
  static String build({
    required String baseUrl,
    required String imagePath,
    String imageBasePath = '/uploads',
  }) {
    // TODO: Remove this after testing
    baseUrl = 'http://192.168.66.58:3000';
    // Return empty string if imagePath is empty
    if (imagePath.isEmpty) {
      return '';
    }

    // If imagePath already contains http/https, return as is
    if (imagePath.startsWith('http://') || imagePath.startsWith('https://')) {
      return imagePath;
    }

    // Remove trailing slash from baseUrl if present
    final cleanBaseUrl = baseUrl.endsWith('/')
        ? baseUrl.substring(0, baseUrl.length - 1)
        : baseUrl;

    // If imagePath already starts with /uploads or the imageBasePath, use it directly
    if (imagePath.startsWith('/uploads') ||
        imagePath.startsWith(imageBasePath)) {
      // Ensure imagePath starts with /
      final cleanImagePath = imagePath.startsWith('/')
          ? imagePath
          : '/$imagePath';
      return '$cleanBaseUrl$cleanImagePath';
    }

    // Remove leading slash from imagePath if present (we'll add it via imageBasePath)
    final cleanImagePath = imagePath.startsWith('/')
        ? imagePath.substring(1)
        : imagePath;

    // Ensure imageBasePath starts with /
    final cleanImageBasePath = imageBasePath.startsWith('/')
        ? imageBasePath
        : '/$imageBasePath';

    // Construct full URL
    return '$cleanBaseUrl$cleanImageBasePath/$cleanImagePath';
  }
}
