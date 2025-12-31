import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../app/theme/app_colors.dart';
import '../../../../app/widgets/custom_app_bar.dart';
import '../../../cart/domain/entities/cart.dart';
import '../widgets/delivery_type_section.dart';
import '../widgets/item_section.dart';

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
class CheckoutScreen extends ConsumerWidget {
  final int branchId;
  final List<Cart> carts;

  const CheckoutScreen({
    super.key,
    required this.branchId,
    required this.carts,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: const CustomAppBar(title: 'Checkout'),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Order Summary Section
              ItemSection(carts: carts),
              // Delivery Type Section
              const DeliveryTypeSection(),
            ],
          ),
        ),
      ),
    );
  }
}
