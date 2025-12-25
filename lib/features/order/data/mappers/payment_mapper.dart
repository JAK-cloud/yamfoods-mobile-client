
import '../../domain/entities/payment.dart';
import '../models/payment_model.dart';

extension PaymentMapper on PaymentModel {
  Payment toDomain() => Payment(
    id: id,
    orderId: orderId,
    method: method,
    transactionId: transactionId,
    amount: amount,
    date: date,
  );
}
