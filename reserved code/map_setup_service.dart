import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gebeta_gl/gebeta_gl.dart';

import '../../../../shared/entities/address_location.dart';
import '../../domain/entities/route.dart';
import 'map_asset_provider.dart';

/// Service responsible for setting up the map with markers, routes, and camera positioning
class MapSetupService {
  final Ref ref;

  MapSetupService(this.ref);

  /// Sets up the map with all necessary markers and polylines.
  ///
  /// Graceful degradation: If assets fail to load, the route will still
  /// be rendered without markers. This ensures the core functionality
  /// (showing the route) works even if secondary features (markers) fail.
  ///
  /// Returns the driver symbol reference for later updates.
  Future<Symbol?> setupMap({
    required GebetaMapController controller,
    required Route route,
    required AddressLocation restaurantAddress,
    required AddressLocation customerAddress,
  }) async {
    // Try to load and add markers (graceful degradation if fails)
    final driverSymbol = await _tryAddMarkers(
      controller: controller,
      route: route,
      restaurantAddress: restaurantAddress,
      customerAddress: customerAddress,
    );

    // Add route polyline (always attempted)
    if (route.polyline.isNotEmpty) {
      final polylinePoints = route.polyline
          .map((point) => LatLng(point.latitude, point.longitude))
          .toList();

      await controller.addLine(
        LineOptions(
          lineColor: '#0000FF',
          lineWidth: 4,
          geometry: polylinePoints,
        ),
      );
    }

    // Fit camera to show entire route (always attempted)
    await fitRouteInView(controller: controller, route: route);

    return driverSymbol;
  }

  /// Attempts to add markers to the map.
  ///
  /// If assets fail to load, markers are skipped silently.
  /// The route will still be displayed without markers.
  ///
  /// Returns the driver symbol reference for later position updates.
  Future<Symbol?> _tryAddMarkers({
    required GebetaMapController controller,
    required Route route,
    required AddressLocation restaurantAddress,
    required AddressLocation customerAddress,
  }) async {
    try {
      final assetsState = ref.read(mapAssetsProvider);

      // Try to get assets
      final assets = await assetsState.when(
        data: (assets) => Future.value(assets),
        loading: () async {
          // Wait for assets provider to complete
          return await ref.read(mapAssetsProvider.future);
        },
        error: (error, stack) => Future.error(error),
      );

      // Add marker images to the map
      await controller.addImage('restaurant', assets.restaurantMarker);
      await controller.addImage('driver', assets.driverMarker);
      await controller.addImage('customer', assets.customerMarker);

      // Determine start and end points from route or fallback to provided addresses
      final startPoint = route.polyline.isNotEmpty
          ? route.polyline.first
          : restaurantAddress;
      final endPoint = route.polyline.isNotEmpty
          ? route.polyline.last
          : customerAddress;

      // Add restaurant marker
      await controller.addSymbol(
        SymbolOptions(
          iconImage: 'restaurant',
          iconSize: 0.25,
          geometry: LatLng(startPoint.latitude, startPoint.longitude),
        ),
      );

      // Add driver marker at initial position (restaurant/route start)
      // Store the symbol reference for later updates
      final driverSymbol = await controller.addSymbol(
        SymbolOptions(
          iconImage: 'driver',
          iconSize: 0.25,
          geometry: LatLng(startPoint.latitude, startPoint.longitude),
        ),
      );

      // Add customer marker
      await controller.addSymbol(
        SymbolOptions(
          iconImage: 'customer',
          iconSize: 0.25,
          geometry: LatLng(endPoint.latitude, endPoint.longitude),
        ),
      );

      return driverSymbol;
    } catch (e) {
      // Assets failed to load - route will still be rendered without markers
      // This is graceful degradation
      debugPrint(
        'MapSetupService: Failed to load markers, continuing with route only: $e',
      );
      return null;
    }
  }

  /// Updates the driver marker position on the map.
  ///
  /// Uses gebeta_gl's updateSymbol method to update the existing driver marker
  /// position instead of adding a new one. This prevents duplicate markers.
  Future<void> updateDriverMarkerPosition({
    required GebetaMapController controller,
    required Symbol driverSymbol,
    required double latitude,
    required double longitude,
  }) async {
    try {
      debugPrint('🔄 Updating driver marker: lat=$latitude, lng=$longitude');

      // Update the existing driver symbol position
      await controller.updateSymbol(
        driverSymbol,
        SymbolOptions(
          iconImage: 'driver',
          iconSize: 0.25,
          geometry: LatLng(latitude, longitude),
        ),
      );

      debugPrint('✅ Driver marker updateSymbol call completed');
    } catch (e, stackTrace) {
      debugPrint(
        '❌ MapSetupService: Failed to update driver marker position: $e',
      );
      debugPrint('Stack trace: $stackTrace');
    }
  }

  /// Fits the camera view to show the entire route with padding
  Future<void> fitRouteInView({
    required GebetaMapController controller,
    required Route route,
  }) async {
    if (route.polyline.isEmpty) return;

    double minLat = route.polyline.first.latitude;
    double maxLat = route.polyline.first.latitude;
    double minLng = route.polyline.first.longitude;
    double maxLng = route.polyline.first.longitude;

    for (final point in route.polyline) {
      if (point.latitude < minLat) minLat = point.latitude;
      if (point.latitude > maxLat) maxLat = point.latitude;
      if (point.longitude < minLng) minLng = point.longitude;
      if (point.longitude > maxLng) maxLng = point.longitude;
    }

    await controller.animateCamera(
      CameraUpdate.newLatLngBounds(
        LatLngBounds(
          southwest: LatLng(minLat, minLng),
          northeast: LatLng(maxLat, maxLng),
        ),
        left: 50,
        top: 50,
        right: 50,
        bottom: 50,
      ),
    );
  }
}

/// Provider for MapSetupService
final mapSetupServiceProvider = Provider<MapSetupService>((ref) {
  return MapSetupService(ref);
});
