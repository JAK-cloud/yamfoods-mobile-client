import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../app/routes/route_names.dart';
import '../../app/theme/app_colors.dart';
import '../../core/permissions/location/location_permission_blocking_dialog.dart';
import '../../core/permissions/location/location_permission_service.dart';
import '../auth/presentation/providers/auth_user_state.dart';
import '../onboarding/presentation/providers/onboarding_providers.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _initializeApp();
  }

  Future<void> _initializeApp() async {
    // Initialize auth state (fire and forget - don't wait for it)
    ref.read(authUserStateProvider);

    // Check location permission status first
    var permissionStatus =
        await LocationPermissionService.checkPermissionStatus();

    // If permission is not granted, request it (first attempt)
    if (!permissionStatus.isGranted) {
      // First request - shows Android's system permission dialog
      permissionStatus = await LocationPermissionService.requestPermission();

      if (!mounted) return;

      // If still denied after first request, give user a second chance
      // (This matches popular app behavior - ask twice before blocking)
      if (!permissionStatus.isGranted &&
          !permissionStatus.isPermanentlyDenied) {
        // Second request - gives user another opportunity
        // Android typically allows 2 attempts before marking as permanently denied
        permissionStatus = await LocationPermissionService.requestPermission();
      }

      if (!mounted) return;

      // Only show blocking dialog if permission is permanently denied
      // (Android won't show system dialog anymore after 2 denials)
      if (permissionStatus.isPermanentlyDenied) {
        // Show blocking dialog - it will keep showing until permission is granted
        await LocationPermissionBlockingDialog.show(context: context);

        // After dialog closes (permission granted), continue with app initialization
        if (!mounted) return;
      }
    }

    // Check if first time
    final isFirstTimeUsecase = ref.read(isFirstTimeUsecaseProvider);
    final firstTimeResult = await isFirstTimeUsecase();
    final isFirstTime = firstTimeResult.fold(
      (failure) => true, // On error, assume first time (show onboarding)
      (value) => value,
    );

    if (!mounted) return;

    // Navigate based on first time check
    if (isFirstTime) {
      context.go(RouteName.onboarding);
    } else {
      context.go(RouteName.home);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [const CircularProgressIndicator(color: AppColors.primary)],
        ),
      ),
    );
  }
}
