//import 'dart:developer' as developer;

import 'package:dartz/dartz.dart';

import '../../../../core/constants/gebeta_map_config.dart';
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
        GebetaMapConfig.apiKey,
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
