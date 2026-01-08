// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_events.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(OrderUiEvents)
const orderUiEventsProvider = OrderUiEventsProvider._();

final class OrderUiEventsProvider
    extends $NotifierProvider<OrderUiEvents, OrderUiEvent?> {
  const OrderUiEventsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'orderUiEventsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$orderUiEventsHash();

  @$internal
  @override
  OrderUiEvents create() => OrderUiEvents();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(OrderUiEvent? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<OrderUiEvent?>(value),
    );
  }
}

String _$orderUiEventsHash() => r'832d44aab6c24d91316dfbde1c4dc06af251d58d';

abstract class _$OrderUiEvents extends $Notifier<OrderUiEvent?> {
  OrderUiEvent? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<OrderUiEvent?, OrderUiEvent?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<OrderUiEvent?, OrderUiEvent?>,
              OrderUiEvent?,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
