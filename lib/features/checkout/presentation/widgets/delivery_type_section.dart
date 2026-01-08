import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_sizes.dart';
import '../../../../app/theme/app_text_styles.dart';
import '../providers/checkout_notifier.dart';

/// Modern segmented control for delivery type selection
class DeliveryTypeSection extends ConsumerWidget {
  final int branchId;

  const DeliveryTypeSection({super.key, required this.branchId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final checkoutState = ref.watch(checkoutProvider(branchId));
    final orderType = checkoutState.orderType;
    final isPickup = orderType == 'pickup';

    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: AppSizes.sm,
        vertical: AppSizes.xs,
      ),
      padding: EdgeInsets.all(AppSizes.sm),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(AppSizes.radius),
        boxShadow: [
          BoxShadow(
            color: AppColors.grey.withValues(alpha: 0.1),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Delivery Type',
            style: AppTextStyles.bodyLarge.copyWith(
              fontWeight: FontWeight.w600,
              color: AppColors.txtPrimary,
            ),
          ),
          SizedBox(height: AppSizes.sm),
          // Modern segmented control
          Row(
            children: [
              Expanded(
                child: _DeliveryOption(
                  label: 'Pickup',
                  icon: Icons.store_outlined,
                  isSelected: isPickup,
                  onTap: () {
                    ref
                        .read(checkoutProvider(branchId).notifier)
                        .setOrderType('pickup');
                  },
                ),
              ),
              SizedBox(width: AppSizes.sm),
              Container(
                width: 1,
                height: 40,
                color: AppColors.grey.withValues(alpha: 0.3),
              ),
              SizedBox(width: AppSizes.sm),
              Expanded(
                child: _DeliveryOption(
                  label: 'Delivery',
                  icon: Icons.local_shipping_outlined,
                  isSelected: !isPickup,
                  onTap: () {
                    ref
                        .read(checkoutProvider(branchId).notifier)
                        .setOrderType('delivery');
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

/// Individual delivery option button
class _DeliveryOption extends StatelessWidget {
  final String label;
  final IconData icon;
  final bool isSelected;
  final VoidCallback onTap;

  const _DeliveryOption({
    required this.label,
    required this.icon,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: EdgeInsets.all(AppSizes.sm),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.primary.withOpacity(0.1) : null,
          borderRadius: BorderRadius.circular(AppSizes.radius),
          border: Border.all(
            color: isSelected ? AppColors.primary : Colors.transparent,
            width: 1.5,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Circular indicator when selected
            if (isSelected) ...[
              Container(
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  shape: BoxShape.circle,
                ),
              ),
              SizedBox(width: AppSizes.xs / 2),
            ],
            Icon(
              icon,
              size: 20,
              color: isSelected ? AppColors.primary : AppColors.txtSecondary,
            ),
            SizedBox(width: AppSizes.xs),
            Text(
              label,
              style: AppTextStyles.bodyMedium.copyWith(
                color: isSelected ? AppColors.primary : AppColors.txtSecondary,
                fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
