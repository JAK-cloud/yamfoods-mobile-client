import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/route_model.dart';

part 'map_api_service.g.dart';

/// Retrofit API service for map/direction endpoints.
///
/// This service connects to the external Gebeta Map API.
/// All routes use query parameters for direction requests.
@RestApi(baseUrl: 'https://mapapi.gebeta.app/api')
abstract class MapApiService {
  factory MapApiService(Dio dio, {String? baseUrl}) = _MapApiService;

  /// Gets direction route between two locations.
  ///
  /// [originLat] - Origin latitude
  /// [originLng] - Origin longitude
  /// [destLat] - Destination latitude
  /// [destLng] - Destination longitude
  /// [apiKey] - API key for authentication
  /// [instruction] - Whether to include instructions (0 = no, 1 = yes)
  @GET('/route/direction/')
  Future<RouteModel> getDirectionRoute(
    @Query('origin') String origin,
    @Query('destination') String destination,
    @Query('apiKey') String apiKey,
    @Query('instruction') int instruction,
  );
}
