import 'package:flutter/material.dart';

import '../../../../../app/theme/app_colors.dart';
import '../../../../../app/theme/app_sizes.dart';
import '../../../../../app/theme/app_text_styles.dart';
import '../../../../../features/order/domain/entities/order_detail.dart';
import 'info_row.dart';

/// Section displaying delivery address information.
///
/// Only displays if address is not null (pickup orders have null address).
class OrderAddressSection extends StatelessWidget {
  final OrderDetail orderDetail;

  const OrderAddressSection({super.key, required this.orderDetail});

  @override
  Widget build(BuildContext context) {
    final address = orderDetail.address;
    if (address == null) {
      return const SizedBox.shrink();
    }

    return Container(
      padding: EdgeInsets.all(AppSizes.lg),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(AppSizes.radius),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.location_on_outlined,
                color: AppColors.primary,
                size: 20,
              ),
              SizedBox(width: AppSizes.sm),
              Text(
                'Delivery Address',
                style: AppTextStyles.h5.copyWith(
                  fontWeight: FontWeight.w700,
                  color: AppColors.txtPrimary,
                ),
              ),
            ],
          ),
          SizedBox(height: AppSizes.lg),
          InfoRow(
            label: 'Subcity',
            value: address.subcity ?? 'N/A',
            icon: Icons.location_city,
          ),
          SizedBox(height: AppSizes.sm),
          InfoRow(
            label: 'Street',
            value: address.street ?? 'N/A',
            icon: Icons.streetview,
          ),
          if (address.building != null) ...[
            SizedBox(height: AppSizes.sm),
            InfoRow(
              label: 'Building',
              value: address.building!,
              icon: Icons.business,
            ),
          ],
          SizedBox(height: AppSizes.sm),
          InfoRow(
            label: 'House No.',
            value: address.houseNo ?? 'N/A',
            icon: Icons.home,
          ),
          if (address.note != null && address.note!.isNotEmpty) ...[
            SizedBox(height: AppSizes.sm),
            InfoRow(
              label: 'Address Note',
              value: address.note!,
              icon: Icons.note_outlined,
            ),
          ],
        ],
      ),
    );
  }
}
