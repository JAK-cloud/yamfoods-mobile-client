// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_events.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AddressUiEvents)
const addressUiEventsProvider = AddressUiEventsProvider._();

final class AddressUiEventsProvider
    extends $NotifierProvider<AddressUiEvents, AddressUiEvent?> {
  const AddressUiEventsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'addressUiEventsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$addressUiEventsHash();

  @$internal
  @override
  AddressUiEvents create() => AddressUiEvents();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AddressUiEvent? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AddressUiEvent?>(value),
    );
  }
}

String _$addressUiEventsHash() => r'f2a7929e2fd51e422e42be2290767bfb59b50b01';

abstract class _$AddressUiEvents extends $Notifier<AddressUiEvent?> {
  AddressUiEvent? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AddressUiEvent?, AddressUiEvent?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AddressUiEvent?, AddressUiEvent?>,
              AddressUiEvent?,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
