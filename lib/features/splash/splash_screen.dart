import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../app/routes/route_names.dart';
import '../../app/theme/app_colors.dart';
import '../../app/theme/app_images.dart';
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
      context.go(RouteName.splash);
    } else {
      context.go(RouteName.branches);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColors.primary,
              AppColors.primary,
              AppColors.primary.withValues(alpha: 0.9),
              AppColors.primary.withValues(alpha: 0.8),
              AppColors.primary.withValues(alpha: 0.7),
            ],
          ),
        ),
        child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Image.asset(
              AppImages.appIconTest,
              height: 300,
              width: 300,
              fit: BoxFit.contain,
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 55),
              child: AnimatedTextKit(
                animatedTexts: [
                  ColorizeAnimatedText(
                    'Noodo Bakers',
                    textAlign: TextAlign.center,
                    textStyle: Theme.of(context).textTheme.titleLarge!.copyWith(
                          fontSize: 32,
                          fontWeight: FontWeight.w600,
                        ),
                    colors: [
                      const Color(0xFFffaa00),
                      AppColors.primary,
                    ],
                    speed: const Duration(milliseconds: 350),
                  ),
                ],
                isRepeatingAnimation: true,
                repeatForever: true,
              ),
            ),
          ],
        ),
      ),
      ),
    );
  }
}
