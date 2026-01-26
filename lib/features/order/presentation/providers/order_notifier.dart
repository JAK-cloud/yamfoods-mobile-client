import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../core/errors/failure.dart';
import '../../../../core/providers/core_providers.dart';
import '../../../../core/services/telebirr_payment_service.dart';
import '../../../cart/presentation/providers/cart_notifier.dart';
import '../../../payment/domain/entities/payment_result.dart';
import '../../domain/entities/create_order_response.dart';
import '../../domain/entities/order_request_data.dart';
import '../../domain/usecases/query_order_payment_usecase.dart';
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
    // ✅ Store ALL notifiers/services/dependencies BEFORE any async gap
    // This ensures they remain valid even if the provider is disposed during async operations
    final creationLoading = ref.read(orderCreationLoadingProvider.notifier);
    final eventsNotifier = ref.read(orderUiEventsProvider.notifier);
    final paymentService = ref.read(telebirrPaymentServiceProvider);
    final logger = ref.read(loggerProvider);
    // ✅ Read queryPaymentUseCase before async gap (doesn't depend on order data)
    final queryPaymentUseCase = await ref.read(
      queryOrderPaymentUseCaseProvider.future,
    );
    // ✅ Read cartNotifier before async gap using branchId from request data
    final cartNotifier = ref.read(cartProvider(data.branchId).notifier);

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
              // Fire-and-forget: Clear all cart items after successful payment
              // ✅ Pass stored dependencies - no ref usage after async gap
              _clearCartItems(
                branchId: data.branchId,
                cartNotifier: cartNotifier,
                logger: logger,
              );

              // Fire-and-forget: Sync order payment status in background
              // This triggers backend database update without blocking UI
              // ✅ Pass stored dependencies - no ref usage after async gap
              _syncOrderPayment(
                orderId: createOrderResponse.order.id,
                useCase: queryPaymentUseCase,
                logger: logger,
              );
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

  /// Fire-and-forget: Syncs order payment status in background.
  ///
  /// This triggers a backend database update by querying the order payment.
  /// Errors are logged silently and don't affect user experience.
  ///
  /// **Safety**: All dependencies are passed as parameters to avoid using `ref`
  /// after async gaps, preventing disposal errors.
  void _syncOrderPayment({
    required int orderId,
    required QueryOrderPaymentUseCase useCase,
    required Logger logger,
  }) {
    // Fire and forget - don't await
    // ✅ All dependencies passed as parameters - no ref usage
    useCase(orderId)
        .then((result) {
          result.fold(
            (failure) {
              // Log error silently - don't show to user
              logger.e(
                'Failed to sync order payment status',
                error: failure,
                stackTrace: StackTrace.current,
              );
            },
            (_) {
              // Success - log for debugging only
              logger.d('Order payment status synced successfully: $orderId');
            },
          );
        })
        .catchError((error, stackTrace) {
          // Catch any unexpected errors
          logger.e(
            'Unexpected error syncing order payment',
            error: error,
            stackTrace: stackTrace,
          );
        });
  }

  /// Fire-and-forget: Clears all cart items after successful payment.
  ///
  /// This removes all items from the cart since the order has been placed.
  /// Errors are logged silently and don't affect user experience.
  ///
  /// **Safety**: All dependencies are passed as parameters to avoid using `ref`
  /// after async gaps, preventing disposal errors.
  void _clearCartItems({
    required int branchId,
    required CartNotifier cartNotifier,
    required Logger logger,
  }) {
    // Fire and forget - don't await
    // ✅ All dependencies passed as parameters - no ref usage
    cartNotifier
        .deleteAllCartItems()
        .then((_) {
          // Success - log for debugging only
          logger.d('Cart items cleared successfully for branch: $branchId');
        })
        .catchError((error, stackTrace) {
          // Catch any unexpected errors
          logger.e(
            'Failed to clear cart items',
            error: error,
            stackTrace: stackTrace,
          );
        });
  }
}
