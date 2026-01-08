// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Manages order creation state and operations.
///
/// **State Management:**
/// - Manages order creation result state
/// - Emits UI events for success/failure
/// - Tracks loading state for order creation
/// - Handles payment automatically after order creation

@ProviderFor(OrderNotifier)
const orderProvider = OrderNotifierProvider._();

/// Manages order creation state and operations.
///
/// **State Management:**
/// - Manages order creation result state
/// - Emits UI events for success/failure
/// - Tracks loading state for order creation
/// - Handles payment automatically after order creation
final class OrderNotifierProvider
    extends $NotifierProvider<OrderNotifier, CreateOrderResponse?> {
  /// Manages order creation state and operations.
  ///
  /// **State Management:**
  /// - Manages order creation result state
  /// - Emits UI events for success/failure
  /// - Tracks loading state for order creation
  /// - Handles payment automatically after order creation
  const OrderNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'orderProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$orderNotifierHash();

  @$internal
  @override
  OrderNotifier create() => OrderNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CreateOrderResponse? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CreateOrderResponse?>(value),
    );
  }
}

String _$orderNotifierHash() => r'6850bb836243c2a84f3d3cea62c5716103c32aab';

/// Manages order creation state and operations.
///
/// **State Management:**
/// - Manages order creation result state
/// - Emits UI events for success/failure
/// - Tracks loading state for order creation
/// - Handles payment automatically after order creation

abstract class _$OrderNotifier extends $Notifier<CreateOrderResponse?> {
  CreateOrderResponse? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<CreateOrderResponse?, CreateOrderResponse?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<CreateOrderResponse?, CreateOrderResponse?>,
              CreateOrderResponse?,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
