import 'package:dartz/dartz.dart' hide Order;

import '../../../../core/errors/failure.dart';
import '../../domain/entities/create_order_response.dart';
import '../../domain/entities/order.dart';
import '../../domain/entities/order_detail.dart';
import '../../domain/entities/order_request_data.dart';
import '../../domain/entities/payment.dart';
import '../../domain/repositories/order_repository.dart';
import '../datasources/order_remote_data_source.dart';
import '../mappers/create_order_response_mapper.dart';
import '../mappers/order_detail_mapper.dart';
import '../mappers/order_mapper.dart';
import '../mappers/payment_mapper.dart';

class OrderRepositoryImpl implements OrderRepository {
  final OrderRemoteDataSource remoteDataSource;

  OrderRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<Failure, CreateOrderResponse>> createOrder(
    OrderRequestData data,
  ) async {
    final result = await remoteDataSource.createOrder(data);
    return result.fold(
      (failure) => Left(failure),
      (model) => Right(model.toDomain()),
    );
  }

  @override
  Future<Either<Failure, List<Orderr>>> getAllOrders() async {
    final result = await remoteDataSource.getAllOrders();
    return result.fold(
      (failure) => Left(failure),
      (models) => Right(models.map((model) => model.toDomain()).toList()),
    );
  }

  @override
  Future<Either<Failure, OrderDetail>> getOrderDetail(int orderId) async {
    final result = await remoteDataSource.getOrderDetail(orderId);
    return result.fold(
      (failure) => Left(failure),
      (model) => Right(model.toDomain()),
    );
  }

  @override
  Future<Either<Failure, Orderr>> updateOrderStatus({
    required int orderId,
    required String status,
    String? qrCode,
  }) async {
    final result = await remoteDataSource.updateOrderStatus(
      orderId: orderId,
      status: status,
      qrCode: qrCode,
    );
    return result.fold(
      (failure) => Left(failure),
      (data) => Right(data.toDomain()),
    );
  }

  @override
  Future<Either<Failure, OrderDetail?>> getOutForDeliveryOrder() async {
    final result = await remoteDataSource.getOutForDeliveryOrder();
    return result.fold((failure) => Left(failure), (model) {
      if (model == null) {
        return Right(null);
      }
      return Right(model.toDomain());
    });
  }

  @override
  Future<Either<Failure, Payment>> queryOrderPayment(int orderId) async {
    final result = await remoteDataSource.queryOrderPayment(orderId);
    return result.fold(
      (failure) => Left(failure),
      (model) => Right(model.toDomain()),
    );
  }
}
