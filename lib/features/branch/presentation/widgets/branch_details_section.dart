import 'package:flutter/material.dart';

import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_sizes.dart';
import '../../../../app/theme/app_text_styles.dart';
import '../../../../app/theme/app_texts.dart';
import '../../domain/entities/branch.dart';
import 'working_days_row.dart';

/// Widget displaying selected branch details.
///
/// Shows working days, address, and distance information.
class BranchDetailsSection extends StatelessWidget {
  final Branch branch;

  const BranchDetailsSection({super.key, required this.branch});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSizes.lg),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Working Days label
          Row(
            children: [
              Icon(
                Icons.calendar_today_outlined,
                size: 18,
                color: AppColors.white.withValues(alpha: 0.8),
              ),
              const SizedBox(width: AppSizes.sm),
              Text(
                AppTexts.workingDays,
                style: AppTextStyles.bodyMedium.copyWith(
                  color: AppColors.white.withValues(alpha: 0.8),
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSizes.sm),

          // Day chips
          WorkingDaysRow(workingDays: branch.activeWorkingDays),

          const SizedBox(height: AppSizes.lg),

          // Address - aligned right
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Icon(
                Icons.location_on_outlined,
                size: 18,
                color: Color(0xFFD4A574),
              ),
              const SizedBox(width: AppSizes.sm),
              Text(
                branch.address,
                style: AppTextStyles.bodyMedium.copyWith(
                  color: AppColors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSizes.sm),

          // Distance
          Row(
            children: [
              Icon(
                Icons.directions_car_outlined,
                size: 18,
                color: AppColors.white.withValues(alpha: 0.7),
              ),
              const SizedBox(width: AppSizes.sm),
              Text(
                '23m ${AppTexts.awayFromYou}',
                style: AppTextStyles.bodyMedium.copyWith(
                  color: AppColors.white.withValues(alpha: 0.7),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
