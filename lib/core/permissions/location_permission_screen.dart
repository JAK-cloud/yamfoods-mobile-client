import 'dart:async';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:geolocator/geolocator.dart';

import '../../app/routes/route_names.dart';
import '../../app/theme/app_colors.dart';
import '../../app/theme/app_sizes.dart';
import '../services/location_handler.dart';

/// Persistent screen that blocks navigation until location permissions are granted and GPS is enabled
/// This screen cannot be dismissed and continuously monitors location status
class LocationPermissionScreen extends StatefulWidget {
  const LocationPermissionScreen({super.key});

  @override
  State<LocationPermissionScreen> createState() =>
      _LocationPermissionScreenState();
}

class _LocationPermissionScreenState extends State<LocationPermissionScreen> {
  final LocationHandler _locationHandler = LocationHandler();
  LocationStatus _currentStatus = LocationStatus.serviceDisabled;
  bool _isLoading = false;
  Timer? _statusCheckTimer;

  @override
  void initState() {
    super.initState();
    _checkLocationStatus();
    _startPeriodicStatusCheck();
    _startLocationServiceMonitoring();
  }

  @override
  void dispose() {
    _statusCheckTimer?.cancel();
    _locationHandler.stopLocationServiceMonitoring();
    super.dispose();
  }

  void _checkLocationStatus() async {
    setState(() => _isLoading = true);

    final status = await _locationHandler.checkLocationStatus();

    if (mounted) {
      setState(() {
        _currentStatus = status;
        _isLoading = false;
      });

      // If all permissions are granted, navigate to home
      if (status == LocationStatus.granted) {
        _navigateToHome();
      }
    }
  }

  void _startPeriodicStatusCheck() {
    // Check status every 2 seconds to ensure we catch changes
    _statusCheckTimer = Timer.periodic(const Duration(seconds: 2), (timer) {
      _checkLocationStatus();
    });
  }

  void _startLocationServiceMonitoring() {
    _locationHandler.startLocationServiceMonitoring((ServiceStatus status) {
      // When service status changes, check our overall status
      _checkLocationStatus();
    });
  }

  void _navigateToHome() {
    // Stop monitoring before navigation
    _statusCheckTimer?.cancel();
    _locationHandler.stopLocationServiceMonitoring();

    // Navigate to home screen
    context.go(RouteName.home);
  }

  void _handlePermissionRequest() async {
    setState(() => _isLoading = true);

    try {
      await _locationHandler.requestLocationPermission();

      // Check status again after permission request
      _checkLocationStatus();
    } catch (e) {
      if (mounted) {
        setState(() => _isLoading = false);
      }
    }
  }

  void _handleOpenSettings() async {
    setState(() => _isLoading = true);

    try {
      await _locationHandler.openLocationSettings();
      // Check status after returning from settings
      await Future.delayed(const Duration(milliseconds: 500));
      _checkLocationStatus();
    } catch (e) {
      if (mounted) {
        setState(() => _isLoading = false);
      }
    }
  }

  void _handleOpenAppSettings() async {
    setState(() => _isLoading = true);

    try {
      await _locationHandler.openAppSettings();
      // Check status after returning from settings
      await Future.delayed(const Duration(milliseconds: 500));
      _checkLocationStatus();
    } catch (e) {
      if (mounted) {
        setState(() => _isLoading = false);
      }
    }
  }

  Widget _buildStatusIcon() {
    IconData iconData;
    Color iconColor;

    switch (_currentStatus) {
      case LocationStatus.granted:
        iconData = Icons.location_on;
        iconColor = AppColors.success;
        break;
      case LocationStatus.permissionDenied:
      case LocationStatus.permissionPermanentlyDenied:
        iconData = Icons.location_off;
        iconColor = AppColors.error;
        break;
      case LocationStatus.serviceDisabled:
        iconData = Icons.gps_off;
        iconColor = AppColors.warning;
        break;
      case LocationStatus.error:
        iconData = Icons.error_outline;
        iconColor = AppColors.error;
        break;
    }

    return Container(
      width: 120,
      height: 120,
      decoration: BoxDecoration(
        color: iconColor.withValues(alpha: 0.1),
        shape: BoxShape.circle,
      ),
      child: Icon(iconData, size: 60, color: iconColor),
    );
  }

  Widget _buildActionButton() {
    if (_isLoading) {
      return const SizedBox(
        width: double.infinity,
        height: AppSizes.btnHeight,
        child: Center(
          child: CircularProgressIndicator(color: AppColors.primary),
        ),
      );
    }

    String buttonText;
    VoidCallback onPressed;

    switch (_currentStatus) {
      case LocationStatus.granted:
        buttonText = 'Continue';
        onPressed = _navigateToHome;
        break;
      case LocationStatus.permissionDenied:
        buttonText = 'Grant Permission';
        onPressed = _handlePermissionRequest;
        break;
      case LocationStatus.permissionPermanentlyDenied:
        buttonText = 'Open App Settings';
        onPressed = _handleOpenAppSettings;
        break;
      case LocationStatus.serviceDisabled:
        buttonText = 'Enable Location Services';
        onPressed = _handleOpenSettings;
        break;
      case LocationStatus.error:
        buttonText = 'Retry';
        onPressed = _checkLocationStatus;
        break;
    }

    return SizedBox(
      width: double.infinity,
      height: AppSizes.btnHeight,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.btnPrimary,
          foregroundColor: AppColors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSizes.radius),
          ),
          elevation: 2,
        ),
        child: Text(
          buttonText,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context){
    return PopScope(
      canPop: false, // Prevent back button from closing this screen
      child: Scaffold(
        backgroundColor: AppColors.background,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(AppSizes.xl),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Status Icon
                _buildStatusIcon(),

                const SizedBox(height: AppSizes.xxl),

                // Title
                Text(
                  _currentStatus.title,
                  style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: AppColors.txtPrimary,
                  ),
                  textAlign: TextAlign.center,
                ),

                const SizedBox(height: AppSizes.lg),

                // Description
                Text(
                  _currentStatus.message,
                  style: const TextStyle(
                    fontSize: 16,
                    color: AppColors.txtSecondary,
                    height: 1.5,
                  ),
                  textAlign: TextAlign.center,
                ),

                const SizedBox(height: AppSizes.xxl),

                // Action Button
                _buildActionButton(),

                const SizedBox(height: AppSizes.xl),

                // Additional Info
                if (_currentStatus == LocationStatus.serviceDisabled)
                  Container(
                    padding: const EdgeInsets.all(AppSizes.lg),
                    decoration: BoxDecoration(
                      color: AppColors.warning.withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(AppSizes.radius),
                      border: Border.all(
                        color: AppColors.warning.withValues(alpha: 0.3),
                      ),
                    ),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.info_outline,
                          color: AppColors.warning,
                          size: 20,
                        ),
                        SizedBox(width: AppSizes.sm),
                        Expanded(
                          child: Text(
                            'Please enable GPS/Location services in your device settings to continue.',
                            style: TextStyle(
                              fontSize: 14,
                              color: AppColors.warning,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                if (_currentStatus ==
                    LocationStatus.permissionPermanentlyDenied)
                  Container(
                    padding: const EdgeInsets.all(AppSizes.lg),
                    decoration: BoxDecoration(
                      color: AppColors.error.withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(AppSizes.radius),
                      border: Border.all(
                        color: AppColors.error.withValues(alpha: 0.3),
                      ),
                    ),
                    child: const Row(
                      children: [
                        Icon(Icons.settings, color: AppColors.error, size: 20),
                        SizedBox(width: AppSizes.sm),
                        Expanded(
                          child: Text(
                            'Location permission has been permanently denied. Please enable it in app settings.',
                            style: TextStyle(
                              fontSize: 14,
                              color: AppColors.error,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
