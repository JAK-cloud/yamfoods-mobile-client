// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_phone_event.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SavePhoneEvents)
const savePhoneEventsProvider = SavePhoneEventsProvider._();

final class SavePhoneEventsProvider
    extends $NotifierProvider<SavePhoneEvents, SavePhoneEvent?> {
  const SavePhoneEventsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'savePhoneEventsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$savePhoneEventsHash();

  @$internal
  @override
  SavePhoneEvents create() => SavePhoneEvents();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SavePhoneEvent? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SavePhoneEvent?>(value),
    );
  }
}

String _$savePhoneEventsHash() => r'dfb37c70d85f675a8e76ee5088eb7a2122209763';

abstract class _$SavePhoneEvents extends $Notifier<SavePhoneEvent?> {
  SavePhoneEvent? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<SavePhoneEvent?, SavePhoneEvent?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<SavePhoneEvent?, SavePhoneEvent?>,
              SavePhoneEvent?,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
