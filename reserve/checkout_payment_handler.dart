import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/enums/payment_method.dart';
import '../../../../core/enums/payment_status.dart';
import '../../../../core/services/chapa_payment_service.dart';
import '../../../../core/services/telebirr_payment_service.dart';
import '../../../order/domain/entities/query_order_request.dart';
import '../../../order/presentation/providers/order_providers.dart';

part 'checkout_payment_handler.g.dart';

/// Holds payment session and runs open + resolve.
/// Resolve calls query order once and reports result via callback.
/// See docs/checkout_payment_verification_plan.md.
@riverpod
CheckoutPaymentHandler checkoutPaymentHandler(Ref ref) {
  return CheckoutPaymentHandler(ref);
}

class CheckoutPaymentHandler {
  CheckoutPaymentHandler(this._ref);

  final Ref _ref;
  bool _resolved = false;

  /// Opens payment (Telebirr or Chapa). Fire-and-forget; we verify via query order when user leaves.
  void openPayment({
    required int orderId,
    required PaymentMethod method,
    String? txnRef,
    required BuildContext context,
    String? receiveCode,
    ChapaPaymentParams? chapaParams,
  }) {
    _resolved = false;

    if (method == PaymentMethod.telebirr && receiveCode != null) {
      _ref.read(telebirrPaymentServiceProvider).startPayment(receiveCode);
    } else if (method == PaymentMethod.chapa && chapaParams != null) {
      _ref.read(chapaPaymentServiceProvider).startPayment(context, chapaParams);
    }
  }

  /// Calls query order and reports success (completed) or fail via [onResult].
  /// Pass [orderId], [method], [txnRef] from checkout so it works even if this
  /// handler was recreated (e.g. autoDispose) while user was on payment screen.
  Future<void> resolvePayment(
    void Function(bool success) onResult, {
    required int orderId,
    required PaymentMethod method,
    String? txnRef,
  }) async {
    if (_resolved) return;
    _resolved = true;

    final useCase = await _ref.read(queryOrderPaymentUseCaseProvider.future);
    final request = QueryOrderRequest(
      orderId: orderId,
      method: method,
      txnRef: txnRef,
    );
    final result = await useCase.call(request);

    result.fold(
      (_) => onResult(false),
      (queryResult) =>
          onResult(queryResult.status == PaymentStatus.completed),
    );
  }

  /// Call when user taps Retry so query order can run again.
  void resetResolved() {
    _resolved = false;
  }
}
