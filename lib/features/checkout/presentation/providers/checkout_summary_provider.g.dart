// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkout_summary_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(checkoutDeliveryDistanceKm)
const checkoutDeliveryDistanceKmProvider = CheckoutDeliveryDistanceKmFamily._();

final class CheckoutDeliveryDistanceKmProvider
    extends $FunctionalProvider<double, double, double>
    with $Provider<double> {
  const CheckoutDeliveryDistanceKmProvider._({
    required CheckoutDeliveryDistanceKmFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'checkoutDeliveryDistanceKmProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$checkoutDeliveryDistanceKmHash();

  @override
  String toString() {
    return r'checkoutDeliveryDistanceKmProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $ProviderElement<double> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  double create(Ref ref) {
    final argument = this.argument as int;
    return checkoutDeliveryDistanceKm(ref, argument);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(double value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<double>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is CheckoutDeliveryDistanceKmProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$checkoutDeliveryDistanceKmHash() =>
    r'0daf207e20ace55bbad6ab124084541bd58192e0';

final class CheckoutDeliveryDistanceKmFamily extends $Family
    with $FunctionalFamilyOverride<double, int> {
  const CheckoutDeliveryDistanceKmFamily._()
    : super(
        retry: null,
        name: r'checkoutDeliveryDistanceKmProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  CheckoutDeliveryDistanceKmProvider call(int branchId) =>
      CheckoutDeliveryDistanceKmProvider._(argument: branchId, from: this);

  @override
  String toString() => r'checkoutDeliveryDistanceKmProvider';
}

/// Provider that calculates checkout summary from checkout state and cart.
///
/// Combines:
/// - CartSummary (base calculations from cart items)
/// - CheckoutState (promo discounts, point discounts, delivery fee)
///
/// Returns a [CheckoutSummary] with all pricing calculations.
/// Always returns a valid summary (zeroed for empty cart).

@ProviderFor(checkoutSummary)
const checkoutSummaryProvider = CheckoutSummaryFamily._();

/// Provider that calculates checkout summary from checkout state and cart.
///
/// Combines:
/// - CartSummary (base calculations from cart items)
/// - CheckoutState (promo discounts, point discounts, delivery fee)
///
/// Returns a [CheckoutSummary] with all pricing calculations.
/// Always returns a valid summary (zeroed for empty cart).

final class CheckoutSummaryProvider
    extends
        $FunctionalProvider<CheckoutSummary, CheckoutSummary, CheckoutSummary>
    with $Provider<CheckoutSummary> {
  /// Provider that calculates checkout summary from checkout state and cart.
  ///
  /// Combines:
  /// - CartSummary (base calculations from cart items)
  /// - CheckoutState (promo discounts, point discounts, delivery fee)
  ///
  /// Returns a [CheckoutSummary] with all pricing calculations.
  /// Always returns a valid summary (zeroed for empty cart).
  const CheckoutSummaryProvider._({
    required CheckoutSummaryFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'checkoutSummaryProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$checkoutSummaryHash();

  @override
  String toString() {
    return r'checkoutSummaryProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $ProviderElement<CheckoutSummary> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  CheckoutSummary create(Ref ref) {
    final argument = this.argument as int;
    return checkoutSummary(ref, argument);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CheckoutSummary value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CheckoutSummary>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is CheckoutSummaryProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$checkoutSummaryHash() => r'de19b475bb196db18c1bcf8d49a08ef068daba48';

/// Provider that calculates checkout summary from checkout state and cart.
///
/// Combines:
/// - CartSummary (base calculations from cart items)
/// - CheckoutState (promo discounts, point discounts, delivery fee)
///
/// Returns a [CheckoutSummary] with all pricing calculations.
/// Always returns a valid summary (zeroed for empty cart).

final class CheckoutSummaryFamily extends $Family
    with $FunctionalFamilyOverride<CheckoutSummary, int> {
  const CheckoutSummaryFamily._()
    : super(
        retry: null,
        name: r'checkoutSummaryProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// Provider that calculates checkout summary from checkout state and cart.
  ///
  /// Combines:
  /// - CartSummary (base calculations from cart items)
  /// - CheckoutState (promo discounts, point discounts, delivery fee)
  ///
  /// Returns a [CheckoutSummary] with all pricing calculations.
  /// Always returns a valid summary (zeroed for empty cart).

  CheckoutSummaryProvider call(int branchId) =>
      CheckoutSummaryProvider._(argument: branchId, from: this);

  @override
  String toString() => r'checkoutSummaryProvider';
}
