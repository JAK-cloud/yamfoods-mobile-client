// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_loading_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CartAddLoading)
const cartAddLoadingProvider = CartAddLoadingProvider._();

final class CartAddLoadingProvider
    extends $NotifierProvider<CartAddLoading, bool> {
  const CartAddLoadingProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'cartAddLoadingProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$cartAddLoadingHash();

  @$internal
  @override
  CartAddLoading create() => CartAddLoading();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$cartAddLoadingHash() => r'94a89a4eeb9c56ecf9d89542ce4ad9462186c3af';

abstract class _$CartAddLoading extends $Notifier<bool> {
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

@ProviderFor(CartQuantityUpdateLoading)
const cartQuantityUpdateLoadingProvider = CartQuantityUpdateLoadingProvider._();

final class CartQuantityUpdateLoadingProvider
    extends $NotifierProvider<CartQuantityUpdateLoading, Set<int>> {
  const CartQuantityUpdateLoadingProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'cartQuantityUpdateLoadingProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$cartQuantityUpdateLoadingHash();

  @$internal
  @override
  CartQuantityUpdateLoading create() => CartQuantityUpdateLoading();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Set<int> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Set<int>>(value),
    );
  }
}

String _$cartQuantityUpdateLoadingHash() =>
    r'5e427d3a7ded31ebc539855916e14d6be10cdea0';

abstract class _$CartQuantityUpdateLoading extends $Notifier<Set<int>> {
  Set<int> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<Set<int>, Set<int>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<Set<int>, Set<int>>,
              Set<int>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(CartDeleteLoading)
const cartDeleteLoadingProvider = CartDeleteLoadingProvider._();

final class CartDeleteLoadingProvider
    extends $NotifierProvider<CartDeleteLoading, Set<int>> {
  const CartDeleteLoadingProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'cartDeleteLoadingProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$cartDeleteLoadingHash();

  @$internal
  @override
  CartDeleteLoading create() => CartDeleteLoading();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Set<int> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Set<int>>(value),
    );
  }
}

String _$cartDeleteLoadingHash() => r'eb96cb3764fbfefdb2b8fa5b47eae0f11f95021d';

abstract class _$CartDeleteLoading extends $Notifier<Set<int>> {
  Set<int> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<Set<int>, Set<int>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<Set<int>, Set<int>>,
              Set<int>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(CartDeleteAllLoading)
const cartDeleteAllLoadingProvider = CartDeleteAllLoadingProvider._();

final class CartDeleteAllLoadingProvider
    extends $NotifierProvider<CartDeleteAllLoading, bool> {
  const CartDeleteAllLoadingProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'cartDeleteAllLoadingProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$cartDeleteAllLoadingHash();

  @$internal
  @override
  CartDeleteAllLoading create() => CartDeleteAllLoading();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$cartDeleteAllLoadingHash() =>
    r'3312cf8ac7207e86e08520db1e7340daa6cc5714';

abstract class _$CartDeleteAllLoading extends $Notifier<bool> {
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
