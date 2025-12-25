import 'package:flutter/material.dart';

import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_sizes.dart';

/// Skeleton loader for promo banner slider.
class PromoBannerSkeleton extends StatelessWidget {
  const PromoBannerSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSizes.bannerHeight,
      margin: EdgeInsets.symmetric(horizontal: AppSizes.lg),
      decoration: BoxDecoration(
        color: AppColors.grey.withValues(alpha: 0.2),
        borderRadius: BorderRadius.circular(AppSizes.radius),
      ),
      child: Center(
        child: CircularProgressIndicator(
          color: AppColors.primary,
          strokeWidth: 2,
        ),
      ),
    );
  }
}
