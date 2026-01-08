// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_loading_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(OrderCreationLoading)
const orderCreationLoadingProvider = OrderCreationLoadingProvider._();

final class OrderCreationLoadingProvider
    extends $NotifierProvider<OrderCreationLoading, bool> {
  const OrderCreationLoadingProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'orderCreationLoadingProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$orderCreationLoadingHash();

  @$internal
  @override
  OrderCreationLoading create() => OrderCreationLoading();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$orderCreationLoadingHash() =>
    r'22b6e4be7304cea29822974bb8e2f6d44b5eddf5';

abstract class _$OrderCreationLoading extends $Notifier<bool> {
  bool build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<bool, bool>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<bool, bool>,
              bool,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
