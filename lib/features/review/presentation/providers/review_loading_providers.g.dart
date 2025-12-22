// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_loading_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ReviewCreateLoading)
const reviewCreateLoadingProvider = ReviewCreateLoadingProvider._();

final class ReviewCreateLoadingProvider
    extends $NotifierProvider<ReviewCreateLoading, bool> {
  const ReviewCreateLoadingProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'reviewCreateLoadingProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$reviewCreateLoadingHash();

  @$internal
  @override
  ReviewCreateLoading create() => ReviewCreateLoading();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$reviewCreateLoadingHash() =>
    r'26af801f8296c1a502874142a7f69cafd6a9624a';

abstract class _$ReviewCreateLoading extends $Notifier<bool> {
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

@ProviderFor(ReviewUpdateLoading)
const reviewUpdateLoadingProvider = ReviewUpdateLoadingProvider._();

final class ReviewUpdateLoadingProvider
    extends $NotifierProvider<ReviewUpdateLoading, Set<int>> {
  const ReviewUpdateLoadingProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'reviewUpdateLoadingProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$reviewUpdateLoadingHash();

  @$internal
  @override
  ReviewUpdateLoading create() => ReviewUpdateLoading();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Set<int> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Set<int>>(value),
    );
  }
}

String _$reviewUpdateLoadingHash() =>
    r'5ed824505189325d55a0ab5a47fdaaaf71d37d81';

abstract class _$ReviewUpdateLoading extends $Notifier<Set<int>> {
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

@ProviderFor(ReviewDeleteLoading)
const reviewDeleteLoadingProvider = ReviewDeleteLoadingProvider._();

final class ReviewDeleteLoadingProvider
    extends $NotifierProvider<ReviewDeleteLoading, Set<int>> {
  const ReviewDeleteLoadingProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'reviewDeleteLoadingProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$reviewDeleteLoadingHash();

  @$internal
  @override
  ReviewDeleteLoading create() => ReviewDeleteLoading();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Set<int> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Set<int>>(value),
    );
  }
}

String _$reviewDeleteLoadingHash() =>
    r'1e67bfcab370f0ce8490faae470d9c4de22ff42f';

abstract class _$ReviewDeleteLoading extends $Notifier<Set<int>> {
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
