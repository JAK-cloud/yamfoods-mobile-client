// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_events.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CartUiEvents)
const cartUiEventsProvider = CartUiEventsProvider._();

final class CartUiEventsProvider
    extends $NotifierProvider<CartUiEvents, CartUiEvent?> {
  const CartUiEventsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'cartUiEventsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$cartUiEventsHash();

  @$internal
  @override
  CartUiEvents create() => CartUiEvents();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CartUiEvent? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CartUiEvent?>(value),
    );
  }
}

String _$cartUiEventsHash() => r'14ef503c8daf8292b099ef19428f91b9dc7bb6e7';

abstract class _$CartUiEvents extends $Notifier<CartUiEvent?> {
  CartUiEvent? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<CartUiEvent?, CartUiEvent?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<CartUiEvent?, CartUiEvent?>,
              CartUiEvent?,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
