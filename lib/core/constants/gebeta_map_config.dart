import 'package:flutter_dotenv/flutter_dotenv.dart';

/// Central place for Gebeta Maps configuration.
///
/// Note: Ideally secrets should come from env/remote config, but this project
/// already embeds the key in multiple places. Keep it centralized to avoid drift.
class GebetaMapConfig {
  GebetaMapConfig._();

  static final String apiKey = dotenv.env['GEBETA_MAP_API_KEY']!;

  /// Geoapify API key for reverse geocoding
  static final String geoapifyApiKey = dotenv.env['GEOAPIFY_API_KEY']!;

}
