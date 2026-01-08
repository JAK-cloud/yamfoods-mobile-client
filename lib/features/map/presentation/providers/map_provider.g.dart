// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Map API service provider
///
/// Provides Retrofit API service for map/direction endpoints.
/// Uses externalApiDioClientProvider since this is an external API (Gebeta Maps)
/// with a different base URL. The baseUrl is specified in the @RestApi annotation
/// and will be used instead of the Dio instance's baseUrl.

@ProviderFor(mapApiService)
const mapApiServiceProvider = MapApiServiceProvider._();

/// Map API service provider
///
/// Provides Retrofit API service for map/direction endpoints.
/// Uses externalApiDioClientProvider since this is an external API (Gebeta Maps)
/// with a different base URL. The baseUrl is specified in the @RestApi annotation
/// and will be used instead of the Dio instance's baseUrl.

final class MapApiServiceProvider
    extends $FunctionalProvider<MapApiService, MapApiService, MapApiService>
    with $Provider<MapApiService> {
  /// Map API service provider
  ///
  /// Provides Retrofit API service for map/direction endpoints.
  /// Uses externalApiDioClientProvider since this is an external API (Gebeta Maps)
  /// with a different base URL. The baseUrl is specified in the @RestApi annotation
  /// and will be used instead of the Dio instance's baseUrl.
  const MapApiServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'mapApiServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$mapApiServiceHash();

  @$internal
  @override
  $ProviderElement<MapApiService> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  MapApiService create(Ref ref) {
    return mapApiService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MapApiService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MapApiService>(value),
    );
  }
}

String _$mapApiServiceHash() => r'a18b7cae608d8cdd4fe8533ace75bf1ad8bef185';

/// Map data source provider
///
/// Provides implementation for fetching route data from Gebeta Maps API.

@ProviderFor(mapDataSource)
const mapDataSourceProvider = MapDataSourceProvider._();

/// Map data source provider
///
/// Provides implementation for fetching route data from Gebeta Maps API.

final class MapDataSourceProvider
    extends $FunctionalProvider<MapDataSource, MapDataSource, MapDataSource>
    with $Provider<MapDataSource> {
  /// Map data source provider
  ///
  /// Provides implementation for fetching route data from Gebeta Maps API.
  const MapDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'mapDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$mapDataSourceHash();

  @$internal
  @override
  $ProviderElement<MapDataSource> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  MapDataSource create(Ref ref) {
    return mapDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MapDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MapDataSource>(value),
    );
  }
}

String _$mapDataSourceHash() => r'fc2f9e3f0167760729a361788d15134507004265';

/// Map repository provider
///
/// Provides the main repository for map operations.

@ProviderFor(mapRepository)
const mapRepositoryProvider = MapRepositoryProvider._();

/// Map repository provider
///
/// Provides the main repository for map operations.

final class MapRepositoryProvider
    extends $FunctionalProvider<MapRepository, MapRepository, MapRepository>
    with $Provider<MapRepository> {
  /// Map repository provider
  ///
  /// Provides the main repository for map operations.
  const MapRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'mapRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$mapRepositoryHash();

  @$internal
  @override
  $ProviderElement<MapRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  MapRepository create(Ref ref) {
    return mapRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MapRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MapRepository>(value),
    );
  }
}

String _$mapRepositoryHash() => r'870f811f6b4397876709e339cf316b4c7615a799';

/// Get route usecase provider
///
/// Provides usecase for fetching route directions between two locations.

@ProviderFor(getRouteUsecase)
const getRouteUsecaseProvider = GetRouteUsecaseProvider._();

/// Get route usecase provider
///
/// Provides usecase for fetching route directions between two locations.

final class GetRouteUsecaseProvider
    extends
        $FunctionalProvider<GetRouteUsecase, GetRouteUsecase, GetRouteUsecase>
    with $Provider<GetRouteUsecase> {
  /// Get route usecase provider
  ///
  /// Provides usecase for fetching route directions between two locations.
  const GetRouteUsecaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getRouteUsecaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getRouteUsecaseHash();

  @$internal
  @override
  $ProviderElement<GetRouteUsecase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  GetRouteUsecase create(Ref ref) {
    return getRouteUsecase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetRouteUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetRouteUsecase>(value),
    );
  }
}

String _$getRouteUsecaseHash() => r'b8aa81dde84f90b9579c31f1969fb4b3b503c0c7';

/// Route provider
///
/// Fetches route between origin and destination using the usecase.
/// Returns [AsyncValue<Route>] which handles loading, error, and data states.
///
/// [origin] - The starting location
/// [destination] - The target location

@ProviderFor(route)
const routeProvider = RouteFamily._();

/// Route provider
///
/// Fetches route between origin and destination using the usecase.
/// Returns [AsyncValue<Route>] which handles loading, error, and data states.
///
/// [origin] - The starting location
/// [destination] - The target location

final class RouteProvider
    extends $FunctionalProvider<AsyncValue<Route>, Route, FutureOr<Route>>
    with $FutureModifier<Route>, $FutureProvider<Route> {
  /// Route provider
  ///
  /// Fetches route between origin and destination using the usecase.
  /// Returns [AsyncValue<Route>] which handles loading, error, and data states.
  ///
  /// [origin] - The starting location
  /// [destination] - The target location
  const RouteProvider._({
    required RouteFamily super.from,
    required (AddressLocation, AddressLocation) super.argument,
  }) : super(
         retry: null,
         name: r'routeProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$routeHash();

  @override
  String toString() {
    return r'routeProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<Route> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<Route> create(Ref ref) {
    final argument = this.argument as (AddressLocation, AddressLocation);
    return route(ref, argument.$1, argument.$2);
  }

  @override
  bool operator ==(Object other) {
    return other is RouteProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$routeHash() => r'ab3a07953d51bb633fb0d17fc2dc1d15069606e7';

/// Route provider
///
/// Fetches route between origin and destination using the usecase.
/// Returns [AsyncValue<Route>] which handles loading, error, and data states.
///
/// [origin] - The starting location
/// [destination] - The target location

final class RouteFamily extends $Family
    with
        $FunctionalFamilyOverride<
          FutureOr<Route>,
          (AddressLocation, AddressLocation)
        > {
  const RouteFamily._()
    : super(
        retry: null,
        name: r'routeProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// Route provider
  ///
  /// Fetches route between origin and destination using the usecase.
  /// Returns [AsyncValue<Route>] which handles loading, error, and data states.
  ///
  /// [origin] - The starting location
  /// [destination] - The target location

  RouteProvider call(AddressLocation origin, AddressLocation destination) =>
      RouteProvider._(argument: (origin, destination), from: this);

  @override
  String toString() => r'routeProvider';
}
