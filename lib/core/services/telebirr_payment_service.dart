import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:telebirr_inapp_sdk/telebirr_inapp_sdk.dart';
import '../../features/payment/domain/entities/payment_result.dart';

part 'telebirr_payment_service.g.dart';

/// Service for handling Telebirr payment integration.
///
/// **Configuration:**
/// - App ID: 1514631168281605
/// - Short Code: 747582
/// - Receive Code: Provided from order creation response
///
/// **Payment Flow:**
/// 1. Initialize SDK with credentials
/// 2. Start payment process
/// 3. Handle success/error responses
@riverpod
class TelebirrPaymentService extends _$TelebirrPaymentService {
  // Telebirr merchant credentials
  static const String _appId = '1514631168281605';
  static const String _shortCode = '747582';

  @override
  TelebirrPaymentService build() => TelebirrPaymentService();

  /// Starts Telebirr payment process.
  ///
  /// Parameters:
  /// - [receiveCode]: The receive code from order creation response
  ///
  /// Returns:
  /// - `PaymentResult.success(transactionId)` on success
  /// - `PaymentResult.failure(message)` on failure
  /// - `PaymentResult.cancelled()` if user cancels
  Future<PaymentResult> startPayment(String receiveCode) async {
    try {
      // Initialize Telebirr SDK with credentials
      final telebirr = TelebirrInappSdk(
        appId: _appId,
        shortCode: _shortCode,
        receiveCode: receiveCode,
      );

      // Start payment process
      final result = await telebirr.startPayment();

      // Handle payment result
      if (result.isNotEmpty && (result['status'] == true)) {
        return PaymentResult.success(
          transactionId: result['transactionId'] as String?,
        );
      } else {
        // Check if user cancelled
        final message = result['message'] as String? ?? 'Payment failed';
        if (message.toLowerCase().contains('cancel')) {
          return PaymentResult.cancelled();
        }
        return PaymentResult.failure(message: message);
      }
    } catch (e) {
      // Handle any exceptions during payment process
      return PaymentResult.failure(message: 'Payment error: ${e.toString()}');
    }
  }
}
