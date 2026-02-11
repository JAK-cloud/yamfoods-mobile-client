import 'package:yamfoods_customer_app/core/enums/payment_method.dart';

/// Request to query order payment status (telebirr or chapa).
class QueryOrderRequest {
  final PaymentMethod method;
  final int orderId;
  final String? txnRef;

  const QueryOrderRequest({
    required this.method,
    required this.orderId,
    this.txnRef,
  });

  Map<String, dynamic> toJson() => {
        'method': method.value,
        'orderId': orderId,
        if (txnRef != null) 'chapaTxnRef': txnRef,
      };
}
