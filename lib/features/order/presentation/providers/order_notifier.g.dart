// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(OrderNotifier)
const orderProvider = OrderNotifierProvider._();

final class OrderNotifierProvider
    extends $NotifierProvider<OrderNotifier, CreateOrderResponse?> {
  const OrderNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'orderProvider',
        isAutoDispose: false,
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

String _$orderNotifierHash() => r'10380df795280f1a0f0ffc78be7c61e38cc1d8bc';

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
