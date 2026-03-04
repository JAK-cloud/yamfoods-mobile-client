import 'package:flutter/material.dart';

import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_sizes.dart';
import '../../../../app/theme/app_text_styles.dart';
import '../../../address/domain/entities/address.dart';

/// Simplified, compact address card for checkout screen.
///
/// Displays address in 2 rows with a simple text button to change.
/// Professional, minimal design.
class CheckoutAddressCard extends StatelessWidget {
  final Address address;
  final VoidCallback onChange;

  const CheckoutAddressCard({
    super.key,
    required this.address,
    required this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: AppSizes.sm,
        vertical: AppSizes.xs,
      ),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(AppSizes.radius),
        border: Border.all(
          color: AppColors.grey.withValues(alpha: 0.15),
          width: 1,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Location icon
          Padding(
            padding: EdgeInsets.only(top: 2),
            child: Icon(
              Icons.location_on_outlined,
              size: 18,
              color: AppColors.primary,
            ),
          ),
          SizedBox(width: AppSizes.xs),
          // Address content
          Expanded(
            child: _hasAddress
                ? Text(
                    address.address,
                    style: AppTextStyles.bodyMedium.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  )
                : const SizedBox.shrink(),
          ),
          SizedBox(width: AppSizes.xs),
          // Change text button
          TextButton(
            onPressed: onChange,
            style: TextButton.styleFrom(
              padding: EdgeInsets.symmetric(
                horizontal: AppSizes.xs,
                vertical: 4,
              ),
              minimumSize: Size.zero,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            child: Text(
              'Change',
              style: AppTextStyles.bodySmall.copyWith(
                color: AppColors.primary,
                fontWeight: FontWeight.w600,
                fontSize: 13,
              ),
            ),
          ),
        ],
      ),
    );
  }

  bool get _hasAddress =>
      address.address.isNotEmpty && address.address != 'N/A';
}
