import 'dart:io';

import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_sizes.dart';
import '../../../app/theme/app_text_styles.dart';
import 'location_permission_service.dart';

/// Blocking dialog shown when location permission is permanently denied.
///
/// This dialog prevents app usage until permission is granted.
/// - Exit button: Closes the app completely
/// - Settings button: Opens app settings, waits for user return, re-checks permission
///
/// The dialog will keep showing until permission is granted.
///
/// Usage:
/// ```dart
/// await LocationPermissionBlockingDialog.show(context: context);
/// ```
class LocationPermissionBlockingDialog extends StatefulWidget {
  const LocationPermissionBlockingDialog({super.key});

  /// Shows the blocking location permission dialog.
  ///
  /// This is a blocking operation - the dialog will keep showing
  /// until permission is granted.
  static Future<void> show({required BuildContext context}) async {
    await showDialog<void>(
      context: context,
      barrierDismissible: false, // Cannot dismiss by tapping outside
      builder: (dialogContext) => const LocationPermissionBlockingDialog(),
    );
  }

  @override
  State<LocationPermissionBlockingDialog> createState() =>
      _LocationPermissionBlockingDialogState();
}

class _LocationPermissionBlockingDialogState
    extends State<LocationPermissionBlockingDialog>
    with WidgetsBindingObserver {
  bool _isChecking = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    // When app resumes (user returns from settings), re-check permission
    if (state == AppLifecycleState.resumed) {
      _recheckPermission();
    }
  }

  /// Handles the exit button - closes the app completely.
  void _handleExit() {
    exit(0);
  }

  /// Handles the settings button - opens app settings.
  Future<void> _handleSettings() async {
    // Open app settings using permission_handler's top-level function
    await openAppSettings();
    // Don't wait here - let didChangeAppLifecycleState handle re-check when user returns
  }

  /// Re-checks permission status when user returns from settings.
  Future<void> _recheckPermission() async {
    setState(() {
      _isChecking = true;
    });

    // Wait a bit for system to update permission status
    await Future.delayed(const Duration(milliseconds: 500));

    // Re-check permission status
    final status = await LocationPermissionService.checkPermissionStatus();

    if (status.isGranted) {
      // Permission granted - close dialog and allow app to continue
      if (mounted && context.mounted) {
        Navigator.of(context).pop();
      }
    } else {
      // Permission still denied - keep dialog open
      setState(() {
        _isChecking = false;
      });
      // Dialog stays open, user can try again or exit
    }
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false, // Prevent back button from closing dialog
      child: AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSizes.radiusLg),
        ),
        contentPadding: EdgeInsets.all(AppSizes.lg),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Icon
            Container(
              padding: EdgeInsets.all(AppSizes.md),
              decoration: BoxDecoration(
                color: AppColors.error.withValues(alpha: 0.1),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.location_off_rounded,
                size: 32,
                color: AppColors.error,
              ),
            ),

            SizedBox(height: AppSizes.md),

            // Title
            Text(
              'Location Permission Required',
              style: AppTextStyles.h4,
              textAlign: TextAlign.center,
            ),

            SizedBox(height: AppSizes.sm),

            // Message
            Text(
              'This app requires location access to show nearby branches and improve your delivery experience. Please enable location permission in settings.',
              style: AppTextStyles.bodyMedium.copyWith(
                color: AppColors.txtSecondary,
              ),
              textAlign: TextAlign.center,
            ),

            if (_isChecking) ...[
              SizedBox(height: AppSizes.md),
              const CircularProgressIndicator(),
            ],
          ],
        ),
        actions: [
          // Exit button
          TextButton(
            onPressed: _isChecking ? null : _handleExit,
            child: Text(
              'Exit',
              style: AppTextStyles.bodyMedium.copyWith(
                color: AppColors.error,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),

          // Settings button
          TextButton(
            onPressed: _isChecking ? null : _handleSettings,
            child: Text(
              'Settings',
              style: AppTextStyles.bodyMedium.copyWith(
                color: AppColors.primary,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
