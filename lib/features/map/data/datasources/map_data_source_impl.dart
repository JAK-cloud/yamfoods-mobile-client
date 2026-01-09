//import 'dart:developer' as developer;

import 'package:dartz/dartz.dart';

import '../../../../core/errors/error_handler.dart';
import '../../../../core/errors/failure.dart';
import '../../../../shared/entities/address_location.dart';
import '../models/route_model.dart';
import 'map_api_service.dart';
import 'map_data_source.dart';

/// Handles map API calls and error transformation.
///
/// **Error Handling:**
/// - Retrofit throws [DioException] for non-2xx responses
/// - All exceptions are caught and transformed via [ErrorHandler.handleException]
/// - Map API errors are automatically detected and mapped to [Failure.mapError]
///   by [ErrorHandler] based on the request URL
class MapDataSourceImpl implements MapDataSource {
  final MapApiService _apiService;

  // API key for Gebeta Map API
  static const String _apiKey =
      "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb21wYW55bmFtZSI6IlJlamViIiwiZGVzY3JpcHRpb24iOiIwY2MwYWFiZC0wYjlkLTQ1NDYtODY4Mi1hMDc2OGYyZjg1ZjkiLCJpZCI6IjVlMzgwN2FhLTQ2NGUtNGYyOC04Y2RjLTc1Y2M0NWYwZjdiMyIsImlzc3VlZF9hdCI6MTc2NDUzNTIyMSwiaXNzdWVyIjoiaHR0cHM6Ly9tYXBhcGkuZ2ViZXRhLmFwcCIsImp3dF9pZCI6IjAiLCJzY29wZXMiOlsiRkVBVFVSRV9BTEwiXSwidXNlcm5hbWUiOiJkZXYgcmVqZWIifQ.LFcL9jfwHT5Uv3iMpbUZJHiZHXuV3GFDCHRj1NYPBRc";

  const MapDataSourceImpl(this._apiService);

  @override
  Future<Either<Failure, RouteModel>> getRoute(
    AddressLocation origin,
    AddressLocation destination,
  ) async {
    try {
      final originStr = '${origin.latitude},${origin.longitude}';
      final destStr = '${destination.latitude},${destination.longitude}';

      final response = await _apiService.getDirectionRoute(
        originStr,
        destStr,
        _apiKey,
        0, // No instructions for simplicity
      );

      // DEBUG: Print full polyline without truncation
      // developer.log(
      //   'Route direction polyline (${response.direction.length} points): ${response.direction}',
      //   name: 'MapDataSource',
      // );

      return Right(response);
    } catch (e) {
      // All errors (DioException, parsing errors, etc.) are handled by ErrorHandler
      // ErrorHandler automatically detects map API errors and maps them to Failure.mapError
      return Left(ErrorHandler.handleException(e));
    }
  }
}
