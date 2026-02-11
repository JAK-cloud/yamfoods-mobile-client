import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../app/theme/app_sizes.dart';
import 'app_skeletonizer_zone.dart';

/// Skeleton loader for promo banner slider with Skeletonizer shimmer animation.
class PromoBannerSkeleton extends StatelessWidget {
  const PromoBannerSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return AppSkeletonizerZone(
      effect: kAppSkeletonEffectOnDark,
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Container(
            height: AppSizes.bannerHeight,
            margin: EdgeInsets.symmetric(horizontal: AppSizes.lg),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppSizes.radius),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(AppSizes.radius),
              child: Bone(
                width: constraints.maxWidth,
                height: AppSizes.bannerHeight,
              ),
            ),
          );
        },
      ),
    );
  }
}
