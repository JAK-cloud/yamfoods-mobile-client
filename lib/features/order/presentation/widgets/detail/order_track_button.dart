import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../app/routes/route_names.dart';
import '../../../../../app/theme/app_colors.dart';
import '../../../../../app/theme/app_sizes.dart';
import '../../../../../app/theme/app_text_styles.dart';
import '../../../../../core/enums/order_status.dart';
import '../../../../../shared/entities/address_location.dart';
import '../../../../map/presentation/models/map_screen_args.dart';
import '../../../domain/entities/order_detail.dart';

/// Track order button displayed when order status is outForDelivery.
///
/// Navigates to order tracking map screen when pressed.
class OrderTrackButton extends StatelessWidget {
  final OrderStatus status;
  final OrderDetail orderDetail;

  const OrderTrackButton({
    super.key,
    required this.status,
    required this.orderDetail,
  });

  @override
  Widget build(BuildContext context) {
    if (status != OrderStatus.outForDelivery) {
      return const SizedBox.shrink();
    }

    return SizedBox(
      width: double.infinity,
      child: OutlinedButton.icon(
        onPressed: () {
          // Hardcoded restaurant location as specified
          const restaurantLocation = AddressLocation(
            latitude: 8.990691,
            longitude: 38.726214,
          );

          const customerLocation = AddressLocation(
            latitude: 9.011046,
            longitude: 38.761295,
          );

          context.push(
            RouteName.orderTracking,
            extra: MapScreenArgs(
              customerLocation: customerLocation,
              restaurantLocation: restaurantLocation,
              orderId: orderDetail.order.id,
              delivererPhone: orderDetail.order.delivererPhone,
            ),
          );
        },
        icon: Icon(Icons.my_location, size: 18, color: AppColors.primary),
        label: Text(
          'Track Order',
          style: AppTextStyles.bodyMedium.copyWith(
            fontWeight: FontWeight.w600,
            color: AppColors.primary,
          ),
        ),
        style: OutlinedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: AppSizes.sm),
          side: BorderSide(color: AppColors.primary, width: 1.5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSizes.radius),
          ),
          backgroundColor: AppColors.primary.withValues(alpha: 0.05),
        ),
      ),
    );
  }
}
