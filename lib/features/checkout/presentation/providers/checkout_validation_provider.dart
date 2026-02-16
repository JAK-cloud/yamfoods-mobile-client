import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/enums/payment_method.dart';
import '../../../app_configuration/presentation/providers/app_configuration_providers.dart';
import '../../../achievement/presentation/providers/achievement_providers.dart';
import '../../models/checkout_validator.dart';
import 'checkout_notifier.dart';

part 'checkout_validation_provider.g.dart';

/// Provider that validates checkout state.
///
/// **What it does:**
/// A computed provider that watches [CheckoutState] and returns validation
/// results in real time. Automatically re-validates when checkout state changes.
///
/// **When it's used:**
///
/// 1. **Disable/enable "Place Order" button:**
///    ```dart
///    final validation = ref.watch(checkoutValidationProvider(branchId));
///    CustomButton(
///      onPressed: validation.isValid ? () => placeOrder() : null,
///      text: 'Place Order',
///    )
///    ```
///
/// 2. **Show inline error messages:**
///    ```dart
///    final validation = ref.watch(checkoutValidationProvider(branchId));
///    if (validation.addressError != null) {
///      Text(validation.addressError!, style: errorStyle)
///    }
///    ```
///
/// 3. **Prevent order placement:**
///    ```dart
///    void placeOrder() {
///      final validation = ref.read(checkoutValidationProvider(branchId));
///      if (!validation.isValid) {
///        // Show error, don't proceed
///        return;
///      }
///      // Proceed with order
///    }
///    ```
///
/// **Why it's useful:**
/// - **Reactive:** Updates automatically when state changes
/// - **Centralized:** All validation logic in one place
/// - **Reusable:** Same validation used in multiple places
/// - **Type-safe:** Structured error messages
///
/// **Example flow:**
/// 1. User selects "Delivery" → validation checks for address
/// 2. User removes address → validation shows error
/// 3. User adds address → validation clears error
/// 4. Button enables/disables automatically
///
/// **Without it:**
/// You'd duplicate validation logic in multiple widgets, making it harder
/// to maintain and keep consistent.
///
/// **In short:** Centralizes validation and enables reactive UI updates
/// (button states, error messages) based on checkout state.
@riverpod
CheckoutValidation checkoutValidation(Ref ref, int branchId) {
  final checkoutState = ref.watch(checkoutProvider(branchId));

  final errors = <String>[];

  // Address validation
  if (checkoutState.orderType == 'delivery' &&
      checkoutState.selectedAddress == null) {
    errors.add('Please select a delivery address');
  }

  // Promo code validation
  if (checkoutState.promoCode != null &&
      checkoutState.promoCodeDiscount == null) {
    errors.add('Invalid promo code');
  }

  // Points validation
  if (checkoutState.pointUsed != null) {
    final appConfig = ref.watch(appConfigurationProvider).value;
    final minimumPoints = appConfig?.minimumPointsRedemption ?? 10000;
    if (checkoutState.pointUsed! < minimumPoints) {
      errors.add('Minimum $minimumPoints points required');
    } else {
      // Check if user has enough points
      final achievementAsync = ref.watch(achievementPointProvider);
      final availablePoints = achievementAsync.value?.point ?? 0;
      if (checkoutState.pointUsed! > availablePoints) {
        errors.add('Insufficient points');
      }
    }
  }

  // Schedule validation
  if (checkoutState.scheduledAt != null) {
    if (checkoutState.scheduledAt!.isBefore(DateTime.now())) {
      errors.add('Scheduled time must be in the future');
    }
  }

  // Payment method validation (use enum: valid only if string parses to PaymentMethod)
  final method = checkoutState.paymentMethod;
  if (method == null || method.isEmpty || method.toPaymentMethod().value.isEmpty) {
    errors.add('Please select a payment method');
  }

  return CheckoutValidation(
    isValid: errors.isEmpty,
    addressError:
        checkoutState.orderType == 'delivery' &&
            checkoutState.selectedAddress == null
        ? 'Please select a delivery address'
        : null,
    promoCodeError:
        checkoutState.promoCode != null &&
            checkoutState.promoCodeDiscount == null
        ? 'Invalid promo code'
        : null,
    pointsError: () {
      if (checkoutState.pointUsed == null) return null;
      final appConfig = ref.watch(appConfigurationProvider).value;
      final minimumPoints = appConfig?.minimumPointsRedemption ?? 10000;
      if (checkoutState.pointUsed! < minimumPoints) {
        return 'Minimum $minimumPoints points required';
      }
      final achievementAsync = ref.watch(achievementPointProvider);
      final availablePoints = achievementAsync.value?.point ?? 0;
      if (checkoutState.pointUsed! > availablePoints) {
        return 'Insufficient points';
      }
      return null;
    }(),
    scheduleError:
        checkoutState.scheduledAt != null &&
            checkoutState.scheduledAt!.isBefore(DateTime.now())
        ? 'Scheduled time must be in the future'
        : null,
    paymentError:
        (method == null ||
            method.isEmpty ||
            method.toPaymentMethod().value.isEmpty)
        ? 'Please select a payment method'
        : null,
    generalError: errors.isNotEmpty ? errors.first : null,
  );
}
