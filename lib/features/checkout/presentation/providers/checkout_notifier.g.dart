// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkout_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Manages checkout state and user interactions.
///
/// **State Management:**
/// - Manages delivery type, address, promo code, points, scheduling, notes
/// - Pure state mutations - no provider calls
/// - UI handles all async operations and passes results here

@ProviderFor(CheckoutNotifier)
const checkoutProvider = CheckoutNotifierFamily._();

/// Manages checkout state and user interactions.
///
/// **State Management:**
/// - Manages delivery type, address, promo code, points, scheduling, notes
/// - Pure state mutations - no provider calls
/// - UI handles all async operations and passes results here
final class CheckoutNotifierProvider
    extends $NotifierProvider<CheckoutNotifier, CheckoutState> {
  /// Manages checkout state and user interactions.
  ///
  /// **State Management:**
  /// - Manages delivery type, address, promo code, points, scheduling, notes
  /// - Pure state mutations - no provider calls
  /// - UI handles all async operations and passes results here
  const CheckoutNotifierProvider._({
    required CheckoutNotifierFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'checkoutProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$checkoutNotifierHash();

  @override
  String toString() {
    return r'checkoutProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  CheckoutNotifier create() => CheckoutNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CheckoutState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CheckoutState>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is CheckoutNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$checkoutNotifierHash() => r'c87a5f28a1f6c3dbd914b3929ab47f0cc8bab2e4';

/// Manages checkout state and user interactions.
///
/// **State Management:**
/// - Manages delivery type, address, promo code, points, scheduling, notes
/// - Pure state mutations - no provider calls
/// - UI handles all async operations and passes results here

final class CheckoutNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          CheckoutNotifier,
          CheckoutState,
          CheckoutState,
          CheckoutState,
          int
        > {
  const CheckoutNotifierFamily._()
    : super(
        retry: null,
        name: r'checkoutProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// Manages checkout state and user interactions.
  ///
  /// **State Management:**
  /// - Manages delivery type, address, promo code, points, scheduling, notes
  /// - Pure state mutations - no provider calls
  /// - UI handles all async operations and passes results here

  CheckoutNotifierProvider call(int branchId) =>
      CheckoutNotifierProvider._(argument: branchId, from: this);

  @override
  String toString() => r'checkoutProvider';
}

/// Manages checkout state and user interactions.
///
/// **State Management:**
/// - Manages delivery type, address, promo code, points, scheduling, notes
/// - Pure state mutations - no provider calls
/// - UI handles all async operations and passes results here

abstract class _$CheckoutNotifier extends $Notifier<CheckoutState> {
  late final _$args = ref.$arg as int;
  int get branchId => _$args;

  CheckoutState build(int branchId);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref = this.ref as $Ref<CheckoutState, CheckoutState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<CheckoutState, CheckoutState>,
              CheckoutState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
