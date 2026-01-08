import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gebeta_gl/gebeta_gl.dart';

import '../../../../app/components/error_widget.dart';
import '../../../../app/theme/app_colors.dart';
import '../../../../core/errors/failure.dart';
import '../../../../core/providers/core_providers.dart';
import '../../../../core/socket/socket_service.dart';
import '../../../../features/auth/presentation/providers/auth_providers.dart';
import '../../../../shared/entities/address_location.dart';
import '../../domain/entities/route.dart' as map_route;
import '../providers/map_provider.dart';
import '../providers/map_setup_service.dart';
import '../providers/map_asset_provider.dart';

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
  SocketService? _socketService;
  bool _isTrackingJoined = false;
  Symbol? _driverSymbol;

  @override
  void initState() {
    super.initState();
    _initializeSocket();
  }

  @override
  void dispose() {
    _socketService?.off(SocketService.eventDriverLocationUpdated);
    _socketService?.off(SocketService.eventTrackingJoined);
    _socketService?.off('connect:authenticated');
    _socketService?.disconnect();
    _mapController?.dispose();
    super.dispose();
  }

  /// Initialize socket connection and set up listeners
  Future<void> _initializeSocket() async {
    try {
      final logger = ref.read(loggerProvider);
      final authLocalDataSource = await ref.read(
        authLocalDataSourceProvider.future,
      );

      _socketService = SocketService(logger, authLocalDataSource);
      await _socketService!.init();
      _socketService!.connect();

      // Wait for connection before joining tracking
      _socketService!.on('connect:authenticated', (_) {
        _joinTrackingRoom();
      });

      // Listen for tracking joined confirmation
      _socketService!.on(SocketService.eventTrackingJoined, (data) {
        debugPrint('✅ Joined tracking room: $data');
        if (mounted) {
          setState(() {
            _isTrackingJoined = true;
          });
        }
      });

      // Listen for driver location updates
      _socketService!.on(SocketService.eventDriverLocationUpdated, (data) {
        // Handle async function - don't await to avoid blocking socket listener
        _handleDriverLocationUpdate(data).catchError((error) {
          debugPrint('Error in driver location update handler: $error');
        });
      });
    } catch (e) {
      debugPrint('Failed to initialize socket: $e');
    }
  }

  /// Join the tracking room for this order
  void _joinTrackingRoom() {
    if (_socketService == null || !_socketService!.isConnected) {
      return;
    }

    if (_isTrackingJoined) {
      return;
    }

    // Emit join_tracking event
    _socketService!.emit(SocketService.eventJoinTracking, {
      'orderId': widget.orderId,
    });
  }

  /// Handle driver location update from socket
  Future<void> _handleDriverLocationUpdate(dynamic data) async {
    try {
      // Parse the response structure from backend
      // Backend sends: { success: true, data: { orderId, lat, lng, heading }, meta: {...} }
      Map<String, dynamic> response;
      if (data is Map) {
        response = data as Map<String, dynamic>;
      } else {
        debugPrint('Invalid driver location data format: $data');
        return;
      }

      // Extract data from response
      final responseData = response['data'] as Map<String, dynamic>?;
      if (responseData == null) {
        debugPrint('No data field in driver location update');
        return;
      }

      // Backend sends coordinates swapped (longitude as 'lat', latitude as 'lng')
      // Need to swap them: backend lat (38.x) is actually longitude, backend lng (9.x) is actually latitude
      final backendLat = responseData['lat'] as double?;
      final backendLng = responseData['lng'] as double?;

      if (backendLat == null || backendLng == null) {
        debugPrint('Missing lat or lng in driver location update');
        return;
      }

      // Swap coordinates: backend sends them reversed
      // In Ethiopia: latitude is ~8-9, longitude is ~38-39
      final lat = backendLng; // Backend's 'lng' is actually latitude
      final lng = backendLat; // Backend's 'lat' is actually longitude

      // Debug: Log the coordinates being used
      debugPrint(
        '📍 Driver location update (raw): backendLat=$backendLat, backendLng=$backendLng',
      );
      debugPrint('📍 Driver location update (swapped): lat=$lat, lng=$lng');

      // Update driver marker position
      if (_mapController == null) {
        debugPrint('⚠️ Cannot update driver marker: map controller is null');
        return;
      }

      if (!mounted) {
        debugPrint('⚠️ Cannot update driver marker: widget not mounted');
        return;
      }

      // If driver symbol doesn't exist yet, create it
      if (_driverSymbol == null) {
        debugPrint('⚠️ Driver symbol is null, creating it now...');
        _driverSymbol = await _createDriverSymbol(lat, lng);
        if (_driverSymbol == null) {
          debugPrint('❌ Failed to create driver symbol');
          return;
        }
      }

      // Update the driver marker position
      final setupService = ref.read(mapSetupServiceProvider);
      await setupService.updateDriverMarkerPosition(
        controller: _mapController!,
        driverSymbol: _driverSymbol!,
        latitude: lat,
        longitude: lng,
      );

      debugPrint('✅ Driver marker updated to: lat=$lat, lng=$lng');
    } catch (e) {
      debugPrint('Error handling driver location update: $e');
    }
  }

  void _onMapCreated(GebetaMapController controller) {
    _mapController = controller;
  }

  /// Creates the driver symbol if it doesn't exist yet
  /// This is a fallback for when location updates arrive before map setup completes
  Future<Symbol?> _createDriverSymbol(double lat, double lng) async {
    if (_mapController == null) return null;

    try {
      // Get assets first
      final assetsState = ref.read(mapAssetsProvider);
      final assets = await assetsState.when(
        data: (assets) => Future.value(assets),
        loading: () async => await ref.read(mapAssetsProvider.future),
        error: (error, stack) => Future.error(error),
      );

      // Add driver image if not already added
      await _mapController!.addImage('driver', assets.driverMarker);

      // Create the driver symbol
      final symbol = await _mapController!.addSymbol(
        SymbolOptions(
          iconImage: 'driver',
          iconSize: 0.25,
          geometry: LatLng(lat, lng),
        ),
      );

      debugPrint('✅ Driver symbol created at: $lat, $lng');
      return symbol;
    } catch (e) {
      debugPrint('❌ Error creating driver symbol: $e');
      return null;
    }
  }

  /// Called when map style is fully loaded.
  /// Safe to add layers, markers, and routes here.
  Future<void> _onStyleLoaded() async {
    if (_mapController == null || _currentRoute == null) return;

    final setupService = ref.read(mapSetupServiceProvider);
    // Store the driver symbol reference for later updates
    _driverSymbol = await setupService.setupMap(
      controller: _mapController!,
      route: _currentRoute!,
      restaurantAddress: widget.restaurantLocation,
      customerAddress: widget.customerLocation,
    );

    if (_driverSymbol == null) {
      debugPrint('⚠️ Warning: Driver symbol was not created during map setup');
    } else {
      debugPrint('✅ Driver symbol created during map setup');
    }

    // Join tracking room after map is set up
    if (_socketService?.isConnected == true && !_isTrackingJoined) {
      _joinTrackingRoom();
    }
  }

  @override
  Widget build(BuildContext context) {
    // Watch route provider to fetch route between restaurant and customer
    final routeAsync = ref.watch(
      routeProvider(widget.restaurantLocation, widget.customerLocation),
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
