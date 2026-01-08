import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_sizes.dart';
import '../../../../app/widgets/custom_app_bar.dart';
import '../../../../core/services/snackbar_service.dart';
import '../../../cart/domain/entities/cart.dart';
import '../../../order/domain/entities/order_request_data.dart';
import '../../../order/presentation/providers/order_events.dart';
import '../../../order/presentation/providers/order_notifier.dart';
import '../providers/checkout_notifier.dart';
import '../providers/checkout_summary_provider.dart';
import '../widgets/address_section.dart';
import '../widgets/checkout_summary_card.dart';
import '../widgets/delivery_type_section.dart';
import '../widgets/item_section.dart';
import '../widgets/points_section.dart';
import '../widgets/promo_code_section.dart';
import '../widgets/schedule_section.dart';
import '../widgets/special_instructions_section.dart';

/// Checkout screen for placing orders.
///
/// This screen will handle:
/// - Order summary display
/// - Delivery type selection (pickup/delivery)
/// - Address selection (for delivery)
/// - Promo code application
/// - Points redemption
/// - Order scheduling
/// - Special instructions
/// - Price breakdown
/// - Order placement
class CheckoutScreen extends ConsumerStatefulWidget {
  final int branchId;
  final List<Cart> carts;

  const CheckoutScreen({
    super.key,
    required this.branchId,
    required this.carts,
  });

  @override
  ConsumerState<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends ConsumerState<CheckoutScreen> {
  /// Creates OrderRequestData from checkout state and summary.
  OrderRequestData _buildOrderRequestData() {
    final checkoutState = ref.read(checkoutProvider(widget.branchId));
    final summary = ref.read(checkoutSummaryProvider(widget.branchId));

    return OrderRequestData(
      branchId: checkoutState.branchId,
      deliveryAddressId: checkoutState.orderType == 'delivery'
          ? checkoutState.selectedAddress?.id
          : null,
      orderType: checkoutState.orderType,
      scheduledAt: checkoutState.scheduledAt,
      method: checkoutState.paymentMethod,
      note: checkoutState.note,
      quantity: summary.quantity,
      subtotal: summary.subtotal,
      vatTotal: summary.vatTotal,
      deliveryFee: summary.deliveryFee,
      discountTotal: summary.discountTotal,
      totalAmount: summary.totalAmount,
      pointUsed: checkoutState.pointUsed,
      pointDiscount: checkoutState.pointDiscount,
      promoCode: checkoutState.promoCode,
      promoCodeDiscount: checkoutState.promoCodeDiscount,
    );
  }

  /// Handles place order action.
  void _handlePlaceOrder() {
    final orderData = _buildOrderRequestData();
    ref.read(orderProvider.notifier).createOrder(orderData);
  }

  @override
  Widget build(BuildContext context) {
    // Listen to order events (payment is already handled inside order notifier)
    ref.listen<OrderUiEvent?>(orderUiEventsProvider, (previous, next) {
      if (next == null) return;

      final snackbar = ref.read(snackbarServiceProvider);

      if (next is OrderCreated) {
        // Order created AND payment successful
        snackbar.showSuccess(next.message);
        // Navigate to success screen or order details
        if (context.mounted) {
          context.pop(); // Or navigate to order details screen
        }
      } else if (next is OrderFailure) {
        // Order creation failed OR payment failed
        snackbar.showError(next.failure);
      }

      ref.read(orderUiEventsProvider.notifier).clear();
    });

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: const CustomAppBar(title: 'Checkout'),
      body: SafeArea(
        child: Column(
          children: [
            // Scrollable content
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Order Summary Section
                    ItemSection(carts: widget.carts),
                    // Delivery Type Section
                    DeliveryTypeSection(branchId: widget.branchId),
                    // Address Section (only shown for delivery)
                    AddressSection(branchId: widget.branchId),
                    // Promo Code Section
                    PromoCodeSection(branchId: widget.branchId),
                    // Points Section
                    PointsSection(branchId: widget.branchId),
                    // Schedule Order Section
                    ScheduleSection(
                      branchId: widget.branchId,
                      workingHourStart: const TimeOfDay(hour: 9, minute: 0),
                      workingHourEnd: const TimeOfDay(hour: 22, minute: 0),
                      maxDaysAhead: 7,
                    ),
                    // Special Instructions Section
                    SpecialInstructionsSection(branchId: widget.branchId),
                    // Bottom padding for summary card
                    SizedBox(height: AppSizes.lg),
                  ],
                ),
              ),
            ),
            // Fixed summary card at bottom
            CheckoutSummaryCard(
              branchId: widget.branchId,
              onPlaceOrder: _handlePlaceOrder,
            ),
          ],
        ),
      ),
    );
  }
}
