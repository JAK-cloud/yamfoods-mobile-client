import 'package:freezed_annotation/freezed_annotation.dart';

part 'checkout_summary.freezed.dart';

@freezed
sealed class CheckoutSummary with _$CheckoutSummary {
  const factory CheckoutSummary({
    required double priceTotal, // Sum of (originalPrice × quantity)
    required double itemDiscountTotal, // sum of each item discounts
    required double promoDiscount, // from promo code
    required double pointDiscount, // from points
    required double
    discountTotal, // promoDiscount + pointDiscount + itemDiscountTotal
    required double
    subtotal, // priceTotal - discountTotal (matches OrderRequestData)
    required double
    vatTotal, // sum of per-item VAT calculated on discounted prices
    required double deliveryFee, // 0 for pickup, calculated for delivery
    required double
    transactionFee, // Chapa 2.5% fee when payment method is chapa
    required double
    totalAmount, // subtotal + vatTotal + deliveryFee + transactionFee
    required int quantity, // Total quantity of items
  }) = _CheckoutSummary;
}
