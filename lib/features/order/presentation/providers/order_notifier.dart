import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../core/errors/failure.dart';
import '../../../../core/services/telebirr_payment_service.dart';
import '../../../payment/domain/entities/payment_result.dart';
import '../../domain/entities/create_order_response.dart';
import '../../domain/entities/order_request_data.dart';
import 'order_providers.dart';
import 'order_events.dart';
import 'order_loading_providers.dart';

part 'order_notifier.g.dart';

/// Manages order creation state and operations.
///
/// **State Management:**
/// - Manages order creation result state
/// - Emits UI events for success/failure
/// - Tracks loading state for order creation
/// - Handles payment automatically after order creation
@riverpod
class OrderNotifier extends _$OrderNotifier {
  @override
  CreateOrderResponse? build() {
    return null;
  }

  /// Creates an order and processes payment automatically.
  ///
  /// Flow:
  /// 1. Create order (pending status)
  /// 2. If order created → Process Telebirr payment
  /// 3. If payment succeeds → Emit OrderCreated (with transactionId)
  /// 4. If payment fails → Emit OrderFailure
  ///
  /// Parameters:
  /// - [data]: The order request data containing all order details
  Future<void> createOrder(OrderRequestData data) async {
    // ✅ Store all notifiers/services BEFORE async gap
    // This ensures they remain valid even if the provider is disposed during async operations
    final creationLoading = ref.read(orderCreationLoadingProvider.notifier);
    final eventsNotifier = ref.read(orderUiEventsProvider.notifier);
    final paymentService = ref.read(telebirrPaymentServiceProvider);

    creationLoading.setLoading(true);

    try {
      // Step 1: Create order
      final useCase = await ref.read(createOrderUseCaseProvider.future);
      final orderResult = await useCase.call(data);

      await orderResult.fold(
        (failure) async {
          // Order creation failed
          eventsNotifier.emit(OrderFailure(failure));
        },
        (createOrderResponse) async {
          // Order created successfully (pending status)
          // Step 2: Process payment automatically
          // ✅ Use stored paymentService (already captured before async gap)
          final paymentResult = await paymentService.startPayment(
            createOrderResponse.receiveCode,
          );

          // Step 3: Handle payment result
          paymentResult.when(
            success: (transactionId) {
              // Payment successful → Emit success with transactionId
              eventsNotifier.emit(
                OrderCreated(
                  createOrderResponse,
                  'Order placed successfully',
                  transactionId,
                ),
              );
              print('payment successful: $transactionId');
            },
            failure: (message) {
              // Payment failed → Emit failure
              eventsNotifier.emit(
                OrderFailure(Failure.payment(message: message)),
              );
            },
            cancelled: () {
              // Payment cancelled → Emit failure
              eventsNotifier.emit(
                OrderFailure(Failure.payment(message: 'Payment was cancelled')),
              );
            },
          );
        },
      );
    } finally {
      creationLoading.setLoading(false);
    }
  }
}
