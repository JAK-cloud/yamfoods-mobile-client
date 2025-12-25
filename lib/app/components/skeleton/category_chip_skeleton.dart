import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';
import '../../theme/app_sizes.dart';

/// Skeleton loader for category chip.
///
/// Displays a placeholder chip matching the category chip layout.
/// Styled for premium surface with white/semi-transparent colors.
class CategoryChipSkeleton extends StatelessWidget {
  const CategoryChipSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      margin: EdgeInsets.only(right: AppSizes.md),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 56,
            height: 56,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.white.withValues(alpha: 0.3),
            ),
          ),
          SizedBox(height: AppSizes.xs),
          Container(
            width: 50,
            height: 12,
            decoration: BoxDecoration(
              color: AppColors.white.withValues(alpha: 0.3),
              borderRadius: BorderRadius.circular(AppSizes.radiusSm),
            ),
          ),
        ],
      ),
    );
  }
}

