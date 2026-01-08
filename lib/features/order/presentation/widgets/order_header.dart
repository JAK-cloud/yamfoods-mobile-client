import 'package:flutter/material.dart';

import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_sizes.dart';
import '../../../../app/theme/app_text_styles.dart';

/// Header component for order screen.
///
/// Displays "My Orders" title with primary color background.
class OrderHeader extends StatelessWidget {
  const OrderHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(
        AppSizes.lg,
        AppSizes.md,
        AppSizes.lg,
        AppSizes.md,
      ),
      decoration: const BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(AppSizes.radiusSm),
          bottomRight: Radius.circular(AppSizes.radiusSm),
        ),
      ),
      child: Row(
        children: [
          Text(
            'My Orders',
            style: AppTextStyles.h3.copyWith(color: AppColors.white),
          ),
        ],
      ),
    );
  }
}


