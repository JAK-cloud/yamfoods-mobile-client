import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../address/domain/entities/address.dart';
import '../../models/checkout_state.dart';

part 'checkout_notifier.g.dart';

/// Manages checkout state and user interactions.
///
/// **State Management:**
/// - Manages delivery type, address, promo code, points, scheduling, notes
/// - Pure state mutations - no provider calls
/// - UI handles all async operations and passes results here
@riverpod
class CheckoutNotifier extends _$CheckoutNotifier {
  @override
  CheckoutState build(int branchId) {
    // Initialize with default values
    return CheckoutState(
      branchId: branchId,
      orderType: 'pickup',
      selectedAddress: null,
      promoCode: null,
      promoCodeDiscount: null,
      pointUsed: null,
      pointDiscount: null,
      scheduledAt: null,
      note: null,
      paymentMethod: 'telebirr',
    );
  }

  /// Sets the order type (pickup or delivery).
  void setOrderType(String orderType) {
    if (orderType != 'pickup' && orderType != 'delivery') {
      return;
    }

    state = state.copyWith(
      orderType: orderType,
      selectedAddress: orderType == 'pickup' ? null : state.selectedAddress,
    );
  }

  /// Selects a delivery address.
  void selectAddress(Address? address) {
    state = state.copyWith(selectedAddress: address);
  }

  /// Sets promo code and discount.
  ///
  /// UI validates promo code and passes discount here.
  void setPromoCode(String? code, double? discount) {
    state = state.copyWith(promoCode: code, promoCodeDiscount: discount);
  }

  /// Removes applied promo code.
  void removePromoCode() {
    state = state.copyWith(promoCode: null, promoCodeDiscount: null);
  }

  /// Sets the number of points to use and calculates discount.
  ///
  /// Calculates point discount using pointConversionRate from app configuration.
  /// UI should validate minimum points before calling this.
  void setPointsToUse(int? points, double pointConversionRate) {
    if (points == null || points == 0) {
      state = state.copyWith(pointUsed: null, pointDiscount: null);
      return;
    }

    final discount = points * pointConversionRate;
    state = state.copyWith(pointUsed: points, pointDiscount: discount);
  }

  /// Removes points usage.
  void removePoints() {
    state = state.copyWith(pointUsed: null, pointDiscount: null);
  }

  /// Sets scheduled delivery/pickup time.
  void setScheduledAt(DateTime? scheduledAt) {
    state = state.copyWith(scheduledAt: scheduledAt);
  }

  /// Sets special instructions/notes.
  void setNote(String? note) {
    state = state.copyWith(note: note);
  }

  /// Sets payment method.
  void setPaymentMethod(String method) {
    state = state.copyWith(paymentMethod: method);
  }
}
