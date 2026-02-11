import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../theme/app_sizes.dart';
import 'app_skeletonizer_zone.dart';

/// Skeleton loader for category chip with Skeletonizer shimmer animation.
///
/// Displays a placeholder chip matching the category chip layout.
/// Uses [kAppSkeletonEffectOnDark] so shimmer is visible on primary gradient.
class CategoryChipSkeleton extends StatelessWidget {
  const CategoryChipSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return AppSkeletonizerZone(
      effect: kAppSkeletonEffectOnDark,
      child: Container(
        width: 70,
        margin: EdgeInsets.only(right: AppSizes.md),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Bone.circle(size: 56),
            SizedBox(height: AppSizes.xs),
            Bone(width: 50, height: 12),
          ],
        ),
      ),
    );
  }
}
