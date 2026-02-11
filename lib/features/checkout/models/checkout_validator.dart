import 'package:freezed_annotation/freezed_annotation.dart';

part 'checkout_validator.freezed.dart';

/// Validation result for checkout state.
@freezed
sealed class CheckoutValidation with _$CheckoutValidation {
  const factory CheckoutValidation({
    required bool isValid,
    String? addressError,
    String? promoCodeError,
    String? pointsError,
    String? scheduleError,
    String? paymentError,
    String? generalError,
  }) = _CheckoutValidation;
}
