import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../domain/entities/create_order_response.dart';
import '../../../../core/errors/failure.dart';

part 'order_events.g.dart';

sealed class OrderUiEvent {}

class OrderCreated extends OrderUiEvent {
  final CreateOrderResponse response;
  final String message;
  final String? transactionId; // Added: nullable transaction ID from payment

  OrderCreated(this.response, this.message, [this.transactionId]);
}

class OrderFailure extends OrderUiEvent {
  final Failure failure;
  OrderFailure(this.failure);
}

@riverpod
class OrderUiEvents extends _$OrderUiEvents {
  @override
  OrderUiEvent? build() {
    return null;
  }

  void emit(OrderUiEvent event) {
    state = event;
  }

  void clear() {
    state = null;
  }
}
