import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'location_permission_service.dart';

/// Widget guard that ensures GPS/High Accuracy is enabled while showing [child].
///
/// The wrapped screen is always visible; when GPS is off, [LocationPermissionService]
/// triggers the system location/GPS dialog on top of this screen. Retries until GPS
/// is available (user can still navigate back with the system back gesture).
///
/// Usage:
/// ```dart
/// LocationGpsGuardPerscreen(
///   child: BranchSelectionScreen(),
/// )
/// ```
class LocationGpsGuardPerscreen extends StatefulWidget {
  const LocationGpsGuardPerscreen({super.key, required this.child});

  final Widget child;

  @override
  State<LocationGpsGuardPerscreen> createState() =>
      _LocationGpsGuardPerscreenState();
}

class _LocationGpsGuardPerscreenState extends State<LocationGpsGuardPerscreen>
    with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _checkGpsStatus();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  /// Checks GPS status and requests location if needed.
  ///
  /// Requesting location with geolocator will automatically trigger
  /// Android's "Location Accuracy" system dialog if GPS is disabled.
  Future<void> _checkGpsStatus() async {
    final permissionStatus =
        await LocationPermissionService.checkPermissionStatus();

    if (!permissionStatus.isGranted) {
      return;
    }

    final isEnabled = await LocationPermissionService.isGpsEnabled();

    if (isEnabled) {
      return;
    }

    try {
      await LocationPermissionService.requestCurrentLocation();
    } catch (e) {
      if (mounted) {
          _checkGpsStatus();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    if (state == AppLifecycleState.resumed) {
      _checkGpsStatus();
    }
  }
}
