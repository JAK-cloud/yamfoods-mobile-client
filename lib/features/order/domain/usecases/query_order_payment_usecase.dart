import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../entities/payment.dart';
import '../repositories/order_repository.dart';

class QueryOrderPaymentUseCase {
  final OrderRepository repository;

  QueryOrderPaymentUseCase(this.repository);

  Future<Either<Failure, Payment>> call(int orderId) async {
    return await repository.queryOrderPayment(orderId);
  }
}
