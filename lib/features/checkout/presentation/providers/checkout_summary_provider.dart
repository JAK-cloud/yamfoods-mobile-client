import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../cart/presentation/providers/cart_notifier.dart';
import '../../../cart/presentation/providers/cart_summary_provider.dart';
import '../../models/checkout_summary.dart';
import 'checkout_notifier.dart';

part 'checkout_summary_provider.g.dart';

/// Provider that calculates checkout summary from checkout state and cart.
///
/// Combines:
/// - CartSummary (base calculations from cart items)
/// - CheckoutState (promo discounts, point discounts, delivery fee)
///
/// Returns a [CheckoutSummary] with all pricing calculations.
/// Always returns a valid summary (zeroed for empty cart).
@riverpod
CheckoutSummary checkoutSummary(Ref ref, int branchId) {
  final checkoutState = ref.watch(checkoutProvider(branchId));
  final cartSummary = ref.watch(cartSummaryProvider(branchId));
  final cartAsync = ref.watch(cartProvider(branchId));

  // Get total quantity from carts
  final carts = cartAsync.value ?? const [];
  final quantity = carts.fold<int>(0, (sum, cart) => sum + cart.quantity);

  // Base values from cart summary
  final priceTotal = cartSummary.priceTotal;
  final itemDiscountTotal = cartSummary.discountTotal;
  final vatTotal = cartSummary.vatTotal;

  // Discounts from checkout state
  final promoDiscount = checkoutState.promoCodeDiscount ?? 0.0;
  final pointDiscount = checkoutState.pointDiscount ?? 0.0;
  final totalDiscount = itemDiscountTotal + promoDiscount + pointDiscount;

  // Delivery fee: 34 ETB for delivery, 0 for pickup
  const deliveryFee = 34.0; // Fixed delivery fee
  final finalDeliveryFee = checkoutState.orderType == 'delivery'
      ? deliveryFee
      : 0.0;

  // Calculate subtotal (priceTotal - all discounts)
  final subtotal = priceTotal - totalDiscount;

  // Calculate total amount
  final totalAmount = subtotal + vatTotal + finalDeliveryFee;

  return CheckoutSummary(
    priceTotal: priceTotal,
    itemDiscountTotal: itemDiscountTotal,
    promoDiscount: promoDiscount,
    pointDiscount: pointDiscount,
    discountTotal: totalDiscount,
    subtotal: subtotal,
    vatTotal: vatTotal,
    deliveryFee: finalDeliveryFee,
    totalAmount: totalAmount,
    quantity: quantity,
  );
}
