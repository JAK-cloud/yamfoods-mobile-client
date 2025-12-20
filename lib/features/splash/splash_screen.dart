import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../app/routes/route_names.dart';
import '../../app/theme/app_colors.dart';
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
