import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/network/di/dio_client.dart';
import '../../data/datasources/map_api_service.dart';
import '../../data/datasources/map_data_source.dart';
import '../../data/datasources/map_data_source_impl.dart';
import '../../data/repositories/map_repository_impl.dart';
import '../../domain/entities/route.dart';
import '../../domain/repositories/map_repository.dart';
import '../../domain/usecases/get_route_usecase.dart';
import '../../../../shared/entities/address_location.dart';

part 'map_provider.g.dart';

// ==================== Data Sources ====================

/// Map API service provider
///
/// Provides Retrofit API service for map/direction endpoints.
/// Uses externalApiDioClientProvider since this is an external API (Gebeta Maps)
/// with a different base URL. The baseUrl is specified in the @RestApi annotation
/// and will be used instead of the Dio instance's baseUrl.
@riverpod
MapApiService mapApiService(Ref ref) {
  final dio = ref.watch(externalApiDioClientProvider);
  return MapApiService(dio);
}

/// Map data source provider
///
/// Provides implementation for fetching route data from Gebeta Maps API.
@riverpod
MapDataSource mapDataSource(Ref ref) {
  final apiService = ref.watch(mapApiServiceProvider);
  return MapDataSourceImpl(apiService);
}

// ==================== Repository ====================

/// Map repository provider
///
/// Provides the main repository for map operations.
@riverpod
MapRepository mapRepository(Ref ref) {
  final dataSource = ref.watch(mapDataSourceProvider);
  return MapRepositoryImpl(dataSource);
}

// ==================== UseCase ====================

/// Get route usecase provider
///
/// Provides usecase for fetching route directions between two locations.
@riverpod
GetRouteUsecase getRouteUsecase(Ref ref) {
  final repository = ref.watch(mapRepositoryProvider);
  return GetRouteUsecase(repository);
}

// ==================== Data Providers ====================

/// Route provider
///
/// Fetches route between origin and destination using the usecase.
/// Returns [AsyncValue<Route>] which handles loading, error, and data states.
///
/// [origin] - The starting location
/// [destination] - The target location
@riverpod
Future<Route> route(
  Ref ref,
  AddressLocation origin,
  AddressLocation destination,
) async {
  final usecase = ref.watch(getRouteUsecaseProvider);
  final result = await usecase(origin, destination);

  return result.fold((failure) => throw failure, (route) => route);
}

// ==================== Socket Integration ====================
//
// Note: For driver location tracking, import and use the socketio feature providers:
//
// import '../../../../features/socketio/presentation/providers/socket_providers.dart';
//
// Then use: ref.watch(driverLocationProvider(orderId))
//
// This keeps the map feature focused on map operations only.
