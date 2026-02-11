import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/enums/payment_method.dart';
import '../../../app_configuration/presentation/providers/app_configuration_providers.dart';
import '../../../branch/presentation/providers/branch_providers.dart';
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

  // Delivery fee: deliveryStartFee + (deliveryFeePerKm * distanceKm)
  final appConfig = ref.watch(appConfigurationProvider).value;
  final distanceKm = ref.watch(currentBranchDistanceProvider) ?? 0.0;
  final startFee = appConfig?.deliveryStartFee ?? 0.0;
  final perKm = appConfig?.deliveryFeePerKm ?? 0.0;
  final finalDeliveryFee = checkoutState.orderType == 'delivery'
      ? startFee + (perKm * distanceKm)
      : 0.0;

  // Calculate subtotal (priceTotal - all discounts)
  final subtotal = priceTotal - totalDiscount;

  // Total before transaction fee
  final totalBeforeFee = subtotal + vatTotal + finalDeliveryFee;

  // Chapa 2.5% transaction fee when payment method is chapa
  final isChapa = checkoutState.paymentMethod == PaymentMethod.chapa.value;
  final transactionFee = isChapa ? totalBeforeFee * 0.025 : 0.0;
  final totalAmount = totalBeforeFee + transactionFee;

  return CheckoutSummary(
    priceTotal: priceTotal,
    itemDiscountTotal: itemDiscountTotal,
    promoDiscount: promoDiscount,
    pointDiscount: pointDiscount,
    discountTotal: totalDiscount,
    subtotal: subtotal,
    vatTotal: vatTotal,
    deliveryFee: finalDeliveryFee,
    transactionFee: transactionFee,
    totalAmount: totalAmount,
    quantity: quantity,
  );
}
