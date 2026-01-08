// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promo_code_loading_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(PromoCodeVerificationLoading)
const promoCodeVerificationLoadingProvider =
    PromoCodeVerificationLoadingProvider._();

final class PromoCodeVerificationLoadingProvider
    extends $NotifierProvider<PromoCodeVerificationLoading, bool> {
  const PromoCodeVerificationLoadingProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'promoCodeVerificationLoadingProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$promoCodeVerificationLoadingHash();

  @$internal
  @override
  PromoCodeVerificationLoading create() => PromoCodeVerificationLoading();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$promoCodeVerificationLoadingHash() =>
    r'74798406179796de1618ea440f8b98d408dc429c';

abstract class _$PromoCodeVerificationLoading extends $Notifier<bool> {
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
