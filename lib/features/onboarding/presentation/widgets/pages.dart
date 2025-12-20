import 'package:flutter/material.dart';

import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_fonts.dart';
import '../../../../app/theme/app_sizes.dart';
import '../../domain/entities/onboarding_page.dart';

class OnboardingPageWidget extends StatelessWidget {
  final OnboardingPage onboardingPage;

  const OnboardingPageWidget({super.key, required this.onboardingPage});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSizes.xl),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: AppSizes.xxl),
          Image(
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 0.45,
            image: AssetImage(onboardingPage.imagePath),
            fit: BoxFit.contain,
          ),
          const SizedBox(height: AppSizes.sm),
          Text(
            onboardingPage.title,
            style: TextStyle(
              fontWeight: AppFontWeight.bold,
              fontSize: AppSizes.xxl,
              color: AppColors.primary,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: AppSizes.lg),
          Text(
            onboardingPage.subtitle,
            style: TextStyle(
              fontWeight: AppFontWeight.light,
              fontSize: AppSizes.lg,
              color: AppColors.primary,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
