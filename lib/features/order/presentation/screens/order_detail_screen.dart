import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../app/components/error_widget.dart';
import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_sizes.dart';
import '../../../../app/widgets/custom_app_bar.dart';
import '../../../../core/enums/order_type.dart';
import '../../../../core/errors/failure.dart';
import '../../../../core/enums/order_status.dart';
import '../providers/order_providers.dart';
import '../widgets/detail/order_info_section.dart';
import '../widgets/detail/order_items_section.dart';
import '../widgets/detail/order_address_section.dart';
import '../widgets/detail/order_payment_section.dart';
import '../widgets/detail/order_qr_section.dart';
import '../widgets/detail/order_status_timeline.dart';
import '../widgets/detail/order_track_button.dart';

/// Order detail screen displaying complete order information.
///
/// Shows order info, items, address (if delivery), payment, QR code (if ready/outForDelivery),
/// and track button (if outForDelivery).
class OrderDetailScreen extends ConsumerWidget {
  final int orderId;

  const OrderDetailScreen({super.key, required this.orderId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final orderDetailAsync = ref.watch(orderDetailProvider(orderId));

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: const CustomAppBar(title: 'Order Details'),
      body: orderDetailAsync.when(
        data: (orderDetail) {
          final status = orderDetail.order.status.toOrderStatus();
          final showQrCode =
              status == OrderStatus.ready ||
              status == OrderStatus.outForDelivery;

          return RefreshIndicator(
            onRefresh: () async {
              ref.invalidate(orderDetailProvider(orderId));
            },
            color: AppColors.primary,
            child: SingleChildScrollView(
              padding: EdgeInsets.all(AppSizes.lg),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Order Info Section
                  OrderInfoSection(order: orderDetail.order),
                  SizedBox(height: AppSizes.lg),

                  // Order Status Timeline
                  //display only if not pickup order
                  if (orderDetail.order.type.toOrderType() != OrderType.pickup)
                  OrderStatusTimeline(order: orderDetail.order),
                  SizedBox(height: AppSizes.lg),
                  // Order Items Section
                  OrderItemsSection(items: orderDetail.items),
                  SizedBox(height: AppSizes.lg),
                  // Address Section (if delivery)
                  OrderAddressSection(orderDetail: orderDetail),
                  if (orderDetail.address != null)
                    SizedBox(height: AppSizes.lg),
                  // Payment Section
                  OrderPaymentSection(orderDetail: orderDetail),
                  // QR Code Section (if ready or outForDelivery)
                  if (showQrCode) ...[
                    SizedBox(height: AppSizes.lg),
                    OrderQrSection(qrCode: orderDetail.order.qrCode),
                  ],
                  // Track Button (if outForDelivery)
                  if (status == OrderStatus.outForDelivery) ...[
                    SizedBox(height: AppSizes.lg),
                    OrderTrackButton(status: status, orderDetail: orderDetail),
                  ],
                  SizedBox(height: AppSizes.xl),
                ],
              ),
            ),
          );
        },
        error: (error, stackTrace) => ErrorWidgett(
          icon: Icons.error_outline,
          title: 'Error loading order details',
          failure: error is Failure
              ? error
              : Failure.unexpected(message: error.toString()),
          onRetry: () {
            ref.invalidate(orderDetailProvider(orderId));
          },
        ),
        loading: () => const Center(
          child: CircularProgressIndicator(color: AppColors.primary),
        ),
      ),
    );
  }
}
