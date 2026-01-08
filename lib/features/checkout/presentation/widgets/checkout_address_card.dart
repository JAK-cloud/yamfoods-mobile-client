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
          // Address content - 2 rows max
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                // First row
                Row(
                  children: [
                    if (_hasSubcity)
                      Flexible(
                        child: Text(
                          address.subcity,
                          style: AppTextStyles.bodyMedium.copyWith(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    if (_hasSubcity && _hasStreet) ...[
                      Text(
                        ', ',
                        style: AppTextStyles.bodyMedium.copyWith(fontSize: 14),
                      ),
                    ],
                    if (_hasStreet)
                      Flexible(
                        child: Text(
                          address.street,
                          style: AppTextStyles.bodyMedium.copyWith(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                  ],
                ),
                SizedBox(height: 2),
                // Second row
                Row(
                  children: [
                    if (_hasBuilding)
                      Flexible(
                        child: Text(
                          address.building,
                          style: AppTextStyles.bodySmall.copyWith(
                            color: AppColors.txtSecondary,
                            fontSize: 12,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    if (_hasBuilding && _hasHouseNo) ...[
                      Text(
                        ', ',
                        style: AppTextStyles.bodySmall.copyWith(
                          color: AppColors.txtSecondary,
                          fontSize: 12,
                        ),
                      ),
                    ],
                    if (_hasHouseNo)
                      Text(
                        'House No: ${address.houseNo}',
                        style: AppTextStyles.bodySmall.copyWith(
                          color: AppColors.txtSecondary,
                          fontSize: 12,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                  ],
                ),
              ],
            ),
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

  bool get _hasSubcity =>
      address.subcity.isNotEmpty && address.subcity != 'N/A';
  bool get _hasStreet => address.street.isNotEmpty && address.street != 'N/A';
  bool get _hasBuilding =>
      address.building.isNotEmpty && address.building != 'N/A';
  bool get _hasHouseNo =>
      address.houseNo.isNotEmpty && address.houseNo != 'N/A';
}
