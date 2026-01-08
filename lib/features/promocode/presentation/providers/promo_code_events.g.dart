// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promo_code_events.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(PromoCodeUiEvents)
const promoCodeUiEventsProvider = PromoCodeUiEventsProvider._();

final class PromoCodeUiEventsProvider
    extends $NotifierProvider<PromoCodeUiEvents, PromoCodeUiEvent?> {
  const PromoCodeUiEventsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'promoCodeUiEventsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$promoCodeUiEventsHash();

  @$internal
  @override
  PromoCodeUiEvents create() => PromoCodeUiEvents();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PromoCodeUiEvent? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PromoCodeUiEvent?>(value),
    );
  }
}

String _$promoCodeUiEventsHash() => r'fbf6553cd77d3a6007c55ecececd2b0d910315ac';

abstract class _$PromoCodeUiEvents extends $Notifier<PromoCodeUiEvent?> {
  PromoCodeUiEvent? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<PromoCodeUiEvent?, PromoCodeUiEvent?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<PromoCodeUiEvent?, PromoCodeUiEvent?>,
              PromoCodeUiEvent?,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
