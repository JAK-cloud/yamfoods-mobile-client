import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/services/location_handler.dart';
import '../routes/route_names.dart';

/// Wrapper component that ensures location permissions are granted before allowing access to protected screens
/// This acts as a guard to prevent users from bypassing location permission requirements
class LocationGuardWrapper extends StatefulWidget {
  final Widget child;

  const LocationGuardWrapper({super.key, required this.child});

  @override
  State<LocationGuardWrapper> createState() => _LocationGuardWrapperState();
}

class _LocationGuardWrapperState extends State<LocationGuardWrapper> {
  final LocationHandler _locationHandler = LocationHandler();
  bool _isChecking = true;
  bool _hasPermission = false;

  @override
  void initState() {
    super.initState();
    _checkLocationStatus();
  }

  Future<void> _checkLocationStatus() async {
    try {
      final status = await _locationHandler.checkLocationStatus();

      if (mounted) {
        setState(() {
          _hasPermission = status == LocationStatus.granted;
          _isChecking = false;
        });

        // If permissions are not granted, redirect to location permission screen
        if (!_hasPermission) {
          context.go(RouteName.locationPermission);
        }
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _isChecking = false;
          _hasPermission = false;
        });
        context.go(RouteName.locationPermission);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_isChecking) {
      // Show loading while checking permissions
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }

    if (!_hasPermission) {
      // This should redirect to location permission screen
      // Return empty container as navigation will happen
      return const SizedBox.shrink();
    }

    // If permissions are granted, show the child widget
    return widget.child;
  }
}
