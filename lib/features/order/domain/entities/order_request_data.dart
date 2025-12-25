import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_request_data.freezed.dart';

/// Data model for creating an order.
@freezed
sealed class OrderRequestData with _$OrderRequestData {
  const factory OrderRequestData({
    required int branchId,
    required int deliveryAddressId,
    required String orderType, // "delivery" or "pickup"
    DateTime? scheduledAt,
    required String method, // payment method like "telebirr"
    String? note,
    required int quantity,
    required double subtotal,
    double? vatTotal,
    required double deliveryFee,
    double? discountTotal,
    required double totalAmount,
  }) = _OrderRequestData;
}
