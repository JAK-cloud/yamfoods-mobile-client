import 'dart:async';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

/// Service class to handle location permissions and GPS service status
/// Ensures users cannot access the app without proper location permissions and GPS enabled
class LocationHandler {
  static final LocationHandler _instance = LocationHandler._internal();
  factory LocationHandler() => _instance;
  LocationHandler._internal();

  StreamSubscription<ServiceStatus>? _serviceStatusStream;

  /// Check if location services are enabled and permissions are granted
  /// Returns true if all requirements are met, false otherwise
  Future<LocationStatus> checkLocationStatus() async {
    try {
      // Check if location services are enabled
      bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        return LocationStatus.serviceDisabled;
      }

      // Check location permissions
      LocationPermission permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        return LocationStatus.permissionDenied;
      }

      if (permission == LocationPermission.deniedForever) {
        return LocationStatus.permissionPermanentlyDenied;
      }

      // Permissions granted and services enabled
      return LocationStatus.granted;
    } catch (e) {
      return LocationStatus.error;
    }
  }

  /// Request location permission from user
  Future<LocationPermission> requestLocationPermission() async {
    return await Geolocator.requestPermission();
  }

  /// Open device location settings
  Future<bool> openLocationSettings() async {
    return await Geolocator.openLocationSettings();
  }

  /// Open app settings for permission management
  Future<bool> openAppSettings() async {
    return await Geolocator.openAppSettings();
  }

  /// Get current location if permissions are granted
  Future<Position?> getCurrentLocation() async {
    try {
      final status = await checkLocationStatus();
      if (status == LocationStatus.granted) {
        final position = await Geolocator.getCurrentPosition(
          locationSettings: const LocationSettings(
            accuracy: LocationAccuracy.bestForNavigation, // ✅ Best for moving vehicles
                     //For Customer Location (Stationary/Ordering) do: LocationAccuracy.high,
            distanceFilter: 2, // meters - update every 2m movement
          ),
        );
        print('Current Location: $position');
        return position;
      }
      return null;
    } catch (e) {
      return null;
    }
  }

  /// Start monitoring location service status changes
  void startLocationServiceMonitoring(Function(ServiceStatus) onStatusChanged) {
    _serviceStatusStream = Geolocator.getServiceStatusStream().listen(
      onStatusChanged,
      onError: (error) {
        debugPrint('Location service monitoring error: $error');
      },
    );
  }

  /// Stop monitoring location service status changes
  void stopLocationServiceMonitoring() {
    _serviceStatusStream?.cancel();
    _serviceStatusStream = null;
  }

  /// Dispose resources
  void dispose() {
    stopLocationServiceMonitoring();
  }
}

/// Enum to represent different location permission states
enum LocationStatus {
  granted,
  permissionDenied,
  permissionPermanentlyDenied,
  serviceDisabled,
  error,
}

/// Extension to get user-friendly messages for location status
extension LocationStatusExtension on LocationStatus {
  String get message {
    switch (this) {
      case LocationStatus.granted:
        return 'Location access granted';
      case LocationStatus.permissionDenied:
        return 'Location permission is required for this app to function properly';
      case LocationStatus.permissionPermanentlyDenied:
        return 'Location permission has been permanently denied. Please enable it in app settings';
      case LocationStatus.serviceDisabled:
        return 'Location services are disabled. Please enable them to use this app';
      case LocationStatus.error:
        return 'An error occurred while checking location status';
    }
  }

  String get title {
    switch (this) {
      case LocationStatus.granted:
        return 'Location Ready';
      case LocationStatus.permissionDenied:
        return 'Location Permission Required';
      case LocationStatus.permissionPermanentlyDenied:
        return 'Permission Permanently Denied';
      case LocationStatus.serviceDisabled:
        return 'Enable Location Services';
      case LocationStatus.error:
        return 'Location Error';
    }
  }
}
