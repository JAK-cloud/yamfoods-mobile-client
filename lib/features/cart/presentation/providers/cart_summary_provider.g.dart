// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_summary_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Provider that calculates cart summary synchronously from cart state.
///
/// Returns a [CartSummary] with all pricing calculations.
/// Always returns a valid summary (zeroed for empty cart).

@ProviderFor(cartSummary)
const cartSummaryProvider = CartSummaryFamily._();

/// Provider that calculates cart summary synchronously from cart state.
///
/// Returns a [CartSummary] with all pricing calculations.
/// Always returns a valid summary (zeroed for empty cart).

final class CartSummaryProvider
    extends $FunctionalProvider<CartSummary, CartSummary, CartSummary>
    with $Provider<CartSummary> {
  /// Provider that calculates cart summary synchronously from cart state.
  ///
  /// Returns a [CartSummary] with all pricing calculations.
  /// Always returns a valid summary (zeroed for empty cart).
  const CartSummaryProvider._({
    required CartSummaryFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'cartSummaryProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$cartSummaryHash();

  @override
  String toString() {
    return r'cartSummaryProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $ProviderElement<CartSummary> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  CartSummary create(Ref ref) {
    final argument = this.argument as int;
    return cartSummary(ref, argument);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CartSummary value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CartSummary>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is CartSummaryProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$cartSummaryHash() => r'980acf80d608e4ac43c900a601fefd5c64539e7e';

/// Provider that calculates cart summary synchronously from cart state.
///
/// Returns a [CartSummary] with all pricing calculations.
/// Always returns a valid summary (zeroed for empty cart).

final class CartSummaryFamily extends $Family
    with $FunctionalFamilyOverride<CartSummary, int> {
  const CartSummaryFamily._()
    : super(
        retry: null,
        name: r'cartSummaryProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// Provider that calculates cart summary synchronously from cart state.
  ///
  /// Returns a [CartSummary] with all pricing calculations.
  /// Always returns a valid summary (zeroed for empty cart).

  CartSummaryProvider call(int branchId) =>
      CartSummaryProvider._(argument: branchId, from: this);

  @override
  String toString() => r'cartSummaryProvider';
}
