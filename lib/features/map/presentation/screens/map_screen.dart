import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gebeta_gl/gebeta_gl.dart';
import 'package:go_router/go_router.dart';

import '../../../../app/components/error_widget.dart';
import '../../../../app/routes/route_names.dart';
import '../../../../app/theme/app_colors.dart';
import '../../../../core/errors/failure.dart';
import '../../../../shared/entities/address_location.dart';
import '../../domain/entities/driver_location.dart';
import '../../domain/entities/route.dart' as map_route;
import '../providers/driver_location_provider.dart';
import '../providers/map_provider.dart';
import '../providers/map_setup_service.dart';
import '../providers/socket_events.dart';
import '../providers/socket_events_notifier.dart';

class MapScreen extends ConsumerStatefulWidget {
  final AddressLocation customerLocation;
  final AddressLocation restaurantLocation;
  final int orderId;

  const MapScreen({
    super.key,
    required this.customerLocation,
    required this.restaurantLocation,
    required this.orderId,
  });

  @override
  ConsumerState<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends ConsumerState<MapScreen> {
  final apiKey =
      "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb21wYW55bmFtZSI6IlJlamViIiwiZGVzY3JpcHRpb24iOiIwY2MwYWFiZC0wYjlkLTQ1NDYtODY4Mi1hMDc2OGYyZjg1ZjkiLCJpZCI6IjVlMzgwN2FhLTQ2NGUtNGYyOC04Y2RjLTc1Y2M0NWYwZjdiMyIsImlzc3VlZF9hdCI6MTc2NDUzNTIyMSwiaXNzdWVyIjoiaHR0cHM6Ly9tYXBhcGkuZ2ViZXRhLmFwcCIsImp3dF9pZCI6IjAiLCJzY29wZXMiOlsiRkVBVFVSRV9BTEwiXSwidXNlcm5hbWUiOiJkZXYgcmVqZWIifQ.LFcL9jfwHT5Uv3iMpbUZJHiZHXuV3GFDCHRj1NYPBRc";

  GebetaMapController? _mapController;
  map_route.Route? _currentRoute;

  @override
  void dispose() {
    _mapController?.dispose();
    super.dispose();
  }

  void _onMapCreated(GebetaMapController controller) {
    _mapController = controller;
  }

  /// Called when map style is fully loaded.
  /// Safe to add layers, markers, and routes here.
  Future<void> _onStyleLoaded() async {
    if (_mapController == null || _currentRoute == null) return;

    final setupService = ref.read(mapSetupServiceProvider);
    await setupService.setupMap(
      controller: _mapController!,
      route: _currentRoute!,
      restaurantAddress: widget.restaurantLocation,
      customerAddress: widget.customerLocation,
    );
  }

  /// Handles driver location updates from the stream
  ///
  /// Updates the driver marker position on the map.
  /// Includes mounted check to prevent updates after widget disposal.
  Future<void> _handleDriverLocationUpdate(DriverLocation location) async {
    // Check if widget is still mounted and map controller exists
    if (!mounted || _mapController == null) return;

    final setupService = ref.read(mapSetupServiceProvider);

    // Backend sends coordinates reversed (lat is actually lng, lng is actually lat)
    // Swap them to get correct position
    await setupService.updateDriverMarkerPosition(
      controller: _mapController!,
      lat: location.lng, // Swap: backend's lng is actually latitude
      lng: location.lat, // Swap: backend's lat is actually longitude
    );
  }

  @override
  Widget build(BuildContext context) {
    // Watch route provider to fetch route between restaurant and customer
    final routeAsync = ref.watch(
      routeProvider(widget.restaurantLocation, widget.customerLocation),
    );

    // Activate socket events notifier to start listening for driver_arrived event
    // This ensures the notifier is active and listening
    ref.watch(socketEventsProvider(widget.orderId));

    // Listen to socket UI events (driver_arrived, order_status_updated)
    // Using ref.listen for side effects (navigation) without widget rebuilds
    ref.listen<SocketUiEvent?>(socketUiEventsProvider, (previous, next) {
      if(next == null) return;
      if (next is DriverArrived && mounted) {
        // Driver has arrived - replace map screen with congratulations screen
        // Using pushReplacement to replace only MapScreen, keeping previous screens in stack
        context.pushReplacement(RouteName.driverArrived, extra: widget.orderId);
      }
       // Handle OrderStatusUpdated
       // For we don't needto track order status update user can see by manually refreshing the order detail
      // if (next is OrderStatusUpdated && mounted) {
      //   print('@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ OrderStatusUpdated lorem ipsum dolor sit amet consectetur adipisicing elit. Quisquam, quos.');
      //   //invalidate that order detail
      //   ref.invalidate(orderDetailProvider(widget.orderId));
      // }
      //clear the socket ui events
      ref.read(socketUiEventsProvider.notifier).clear();
    },
    );

    // Listen to driver location updates and update marker when location changes
    // Using ref.listen for side effects (marker update) without widget rebuilds
    // This is the recommended approach for real-time updates that don't need UI rebuilds
    ref.listen<AsyncValue<DriverLocation>>(
      driverLocationProvider(widget.orderId),
      (previous, next) {
        // Handle data updates
        next.whenData((location) {
          _handleDriverLocationUpdate(location);
        });

        // Handle errors (log but don't crash - tracking is non-critical)
        if (next.hasError && mounted) {
          debugPrint(
            'MapScreen: Error receiving driver location update: ${next.error}',
          );
        }
      },
    );

    return Scaffold(
      body: routeAsync.when(
        data: (route) {
          // Store route for use in onMapCreated
          _currentRoute = route;
          return GebetaMap(
            initialCameraPosition: CameraPosition(
              target: LatLng(
                widget.customerLocation.latitude,
                widget.customerLocation.longitude,
              ),
              zoom: 15,
            ),
            apiKey: apiKey,
            attributionButtonPosition: AttributionButtonPosition.bottomRight,
            onMapCreated: _onMapCreated,
            onStyleLoadedCallback: _onStyleLoaded,
          );
        },
        loading: () => const Center(
          child: CircularProgressIndicator(color: AppColors.primary),
        ),
        error: (error, stackTrace) => ErrorWidgett(
          icon: Icons.error_outline,
          title: 'Error loading route',
          failure: error is Failure
              ? error
              : Failure.unexpected(message: error.toString()),
          onRetry: () {
            ref.invalidate(
              routeProvider(widget.restaurantLocation, widget.customerLocation),
            );
          },
        ),
      ),
    );
  }
}
