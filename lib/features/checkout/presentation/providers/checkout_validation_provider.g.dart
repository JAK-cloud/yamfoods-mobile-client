// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkout_validation_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Provider that validates checkout state.
///
/// Returns validation result with specific error messages.
/// Watches checkout state and validates all required fields.

@ProviderFor(checkoutValidation)
const checkoutValidationProvider = CheckoutValidationFamily._();

/// Provider that validates checkout state.
///
/// Returns validation result with specific error messages.
/// Watches checkout state and validates all required fields.

final class CheckoutValidationProvider
    extends
        $FunctionalProvider<
          CheckoutValidation,
          CheckoutValidation,
          CheckoutValidation
        >
    with $Provider<CheckoutValidation> {
  /// Provider that validates checkout state.
  ///
  /// Returns validation result with specific error messages.
  /// Watches checkout state and validates all required fields.
  const CheckoutValidationProvider._({
    required CheckoutValidationFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'checkoutValidationProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$checkoutValidationHash();

  @override
  String toString() {
    return r'checkoutValidationProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $ProviderElement<CheckoutValidation> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  CheckoutValidation create(Ref ref) {
    final argument = this.argument as int;
    return checkoutValidation(ref, argument);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CheckoutValidation value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CheckoutValidation>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is CheckoutValidationProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$checkoutValidationHash() =>
    r'83da489a392d032edae88453441dc307a9984ff8';

/// Provider that validates checkout state.
///
/// Returns validation result with specific error messages.
/// Watches checkout state and validates all required fields.

final class CheckoutValidationFamily extends $Family
    with $FunctionalFamilyOverride<CheckoutValidation, int> {
  const CheckoutValidationFamily._()
    : super(
        retry: null,
        name: r'checkoutValidationProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// Provider that validates checkout state.
  ///
  /// Returns validation result with specific error messages.
  /// Watches checkout state and validates all required fields.

  CheckoutValidationProvider call(int branchId) =>
      CheckoutValidationProvider._(argument: branchId, from: this);

  @override
  String toString() => r'checkoutValidationProvider';
}
