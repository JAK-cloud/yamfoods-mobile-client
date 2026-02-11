import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_sizes.dart';
import '../../../app/theme/app_text_styles.dart';
import 'location_permission_service.dart';

/// Widget guard that ensures GPS/High Accuracy is enabled before showing child.
///
/// This guard wraps screens that require GPS (Branch Selection, Order Tracking, Live Delivery Map).
/// - If GPS is enabled: Shows the child widget normally
/// - If GPS is disabled: Requests location which triggers Android's "Location Accuracy" system dialog
/// - Keeps requesting until GPS is enabled (back button doesn't bypass)
///
/// Usage:
/// ```dart
/// LocationGpsGuard(
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
  bool _isGpsEnabled = false;
  bool _isChecking = true;

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
    // First, verify location permission is granted
    // (This should already be granted at app level, but check to be safe)
    final permissionStatus =
        await LocationPermissionService.checkPermissionStatus();

    if (!permissionStatus.isGranted) {
      // Permission not granted - this shouldn't happen if app-level check worked
      // But if it does, we can't proceed without permission
      if (mounted) {
        setState(() {
          _isChecking = false;
          // Keep GPS disabled state - screen won't show
        });
      }
      return;
    }

    // Check if GPS is enabled
    final isEnabled = await LocationPermissionService.isGpsEnabled();

    if (isEnabled) {
      // GPS is enabled - allow screen to show
      if (mounted) {
        setState(() {
          _isGpsEnabled = true;
          _isChecking = false;
        });
      }
      return;
    }

    // GPS is disabled - update UI to show rationale, then request location
    // This will trigger Android's "Location Accuracy" system dialog
    if (mounted) {
      setState(() {
        _isChecking = false; // Show rationale UI instead of loading
      });
    }

    // Request location - this triggers the system GPS accuracy dialog
    // The dialog will appear automatically when geolocator tries to get location
    try {
      await LocationPermissionService.requestCurrentLocation();

      // If we get here, GPS was enabled (user tapped "Turn on" in system dialog)
      if (mounted) {
        setState(() {
          _isGpsEnabled = true;
        });
      }
    } catch (e) {
      // Location request failed - GPS still disabled
      // User might have dismissed the system dialog or GPS is still off
      // Re-check GPS status after a short delay and try again
      if (mounted) {
        await Future.delayed(const Duration(milliseconds: 1500));
        if (mounted) {
          _checkGpsStatus(); // Recursive call to keep checking
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    // If GPS is enabled, show the child widget
    if (_isGpsEnabled) {
      return widget.child;
    }

    // If still checking, show loading indicator
    if (_isChecking) {
      return Scaffold(
        backgroundColor: AppColors.background,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircularProgressIndicator(),
              const SizedBox(height: AppSizes.lg),
              Text(
                'Checking GPS status...',
                style: AppTextStyles.bodyMedium.copyWith(
                  color: AppColors.txtSecondary,
                ),
              ),
            ],
          ),
        ),
      );
    }

    // GPS is disabled - show rationale and wait for system dialog
    // The system dialog will appear automatically when we request location
    return PopScope(
      canPop: false, // Prevent back button from bypassing GPS requirement
      child: Scaffold(
        backgroundColor: AppColors.background,
        body: Padding(
          padding: const EdgeInsets.all(AppSizes.xl),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Icon
              Container(
                padding: const EdgeInsets.all(AppSizes.lg),
                decoration: BoxDecoration(
                  color: AppColors.primary.withValues(alpha: 0.1),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.gps_fixed,
                  size: 48,
                  color: AppColors.primary,
                ),
              ),
              const SizedBox(height: AppSizes.xl),

              // Title
              Text(
                'GPS Required',
                style: AppTextStyles.h4,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: AppSizes.md),

              // Message
              Text(
                'This screen requires high-accuracy location (GPS) to function properly. Please enable GPS when prompted.',
                style: AppTextStyles.bodyMedium.copyWith(
                  color: AppColors.txtSecondary,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: AppSizes.xl),

              // Loading indicator
              const CircularProgressIndicator(),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    // When app resumes (user returns from settings), re-check GPS
    if (state == AppLifecycleState.resumed) {
      _checkGpsStatus();
    }
  }
}
