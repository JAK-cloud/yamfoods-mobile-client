import 'package:freezed_annotation/freezed_annotation.dart';

import '../../address/domain/entities/address.dart';

part 'checkout_state.freezed.dart';

@freezed
sealed class CheckoutState with _$CheckoutState {
  const factory CheckoutState({
    required int branchId,
    required String orderType, // "pickup" | "delivery" | "dining"
    Address? selectedAddress, // null for pickup and dining
    String? tableNumber, // required when orderType is dining, max 20 chars
    String? promoCode,
    double? promoCodeDiscount, // Changed from String to double
    int? pointUsed, // Renamed from points for consistency
    double? pointDiscount,
    DateTime? scheduledAt,
    String? note,
    String? paymentMethod, // "telebirr" | "chapa" when set; null = no selection
  }) = _CheckoutState;
}
