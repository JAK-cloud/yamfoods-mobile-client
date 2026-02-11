import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_request_data.freezed.dart';

/// Data model for creating an order.
@freezed
sealed class OrderRequestData with _$OrderRequestData {
  const factory OrderRequestData({
    required int branchId,
    int? deliveryAddressId, // only required if order type is delivery
    required String orderType, // "delivery" or "pickup"
    DateTime? scheduledAt,
    required String method, // payment method like "telebirr"
    String? note,
    required int quantity,
    required double subtotal,
    required double vatTotal,
    required double deliveryFee,
    required double discountTotal,
    required double totalAmount,
    double? transactionFee, // Chapa 2.5% fee when payment method is chapa
    int? pointUsed,
    double? pointDiscount,
    String? promoCode,
    double? promoCodeDiscount,
    double? distanceKm, // distance from user to branch in km (set at branch selection)
  }) = _OrderRequestData;
}
