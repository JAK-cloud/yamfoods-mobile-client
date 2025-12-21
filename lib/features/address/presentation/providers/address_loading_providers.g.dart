// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_loading_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AddressCreateLoading)
const addressCreateLoadingProvider = AddressCreateLoadingProvider._();

final class AddressCreateLoadingProvider
    extends $NotifierProvider<AddressCreateLoading, bool> {
  const AddressCreateLoadingProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'addressCreateLoadingProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$addressCreateLoadingHash();

  @$internal
  @override
  AddressCreateLoading create() => AddressCreateLoading();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$addressCreateLoadingHash() =>
    r'd5b2265afa4cfa76a2cc146189499033e46d6ecd';

abstract class _$AddressCreateLoading extends $Notifier<bool> {
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

@ProviderFor(AddressUpdateLoading)
const addressUpdateLoadingProvider = AddressUpdateLoadingProvider._();

final class AddressUpdateLoadingProvider
    extends $NotifierProvider<AddressUpdateLoading, Set<int>> {
  const AddressUpdateLoadingProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'addressUpdateLoadingProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$addressUpdateLoadingHash();

  @$internal
  @override
  AddressUpdateLoading create() => AddressUpdateLoading();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Set<int> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Set<int>>(value),
    );
  }
}

String _$addressUpdateLoadingHash() =>
    r'54e2b71b291d3b07cb72b03ef8e0f562ccc1ef47';

abstract class _$AddressUpdateLoading extends $Notifier<Set<int>> {
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

@ProviderFor(AddressDeleteLoading)
const addressDeleteLoadingProvider = AddressDeleteLoadingProvider._();

final class AddressDeleteLoadingProvider
    extends $NotifierProvider<AddressDeleteLoading, Set<int>> {
  const AddressDeleteLoadingProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'addressDeleteLoadingProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$addressDeleteLoadingHash();

  @$internal
  @override
  AddressDeleteLoading create() => AddressDeleteLoading();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Set<int> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Set<int>>(value),
    );
  }
}

String _$addressDeleteLoadingHash() =>
    r'97b2b1b0b6576b28bb9ddcfca9e32842a202b185';

abstract class _$AddressDeleteLoading extends $Notifier<Set<int>> {
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
