// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_phone_event.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(VerifyPhoneEvents)
const verifyPhoneEventsProvider = VerifyPhoneEventsProvider._();

final class VerifyPhoneEventsProvider
    extends $NotifierProvider<VerifyPhoneEvents, VerifyPhoneEvent?> {
  const VerifyPhoneEventsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'verifyPhoneEventsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$verifyPhoneEventsHash();

  @$internal
  @override
  VerifyPhoneEvents create() => VerifyPhoneEvents();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(VerifyPhoneEvent? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<VerifyPhoneEvent?>(value),
    );
  }
}

String _$verifyPhoneEventsHash() => r'0382bc8c3f412fad3552839616849fa858c6266c';

abstract class _$VerifyPhoneEvents extends $Notifier<VerifyPhoneEvent?> {
  VerifyPhoneEvent? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<VerifyPhoneEvent?, VerifyPhoneEvent?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<VerifyPhoneEvent?, VerifyPhoneEvent?>,
              VerifyPhoneEvent?,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
