// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_otp_event.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(RequestOtpEvents)
const requestOtpEventsProvider = RequestOtpEventsProvider._();

final class RequestOtpEventsProvider
    extends $NotifierProvider<RequestOtpEvents, RequestOtpEvent?> {
  const RequestOtpEventsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'requestOtpEventsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$requestOtpEventsHash();

  @$internal
  @override
  RequestOtpEvents create() => RequestOtpEvents();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RequestOtpEvent? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<RequestOtpEvent?>(value),
    );
  }
}

String _$requestOtpEventsHash() => r'e831d764f7fc0d3b319f781e43e3adec6fd4699f';

abstract class _$RequestOtpEvents extends $Notifier<RequestOtpEvent?> {
  RequestOtpEvent? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<RequestOtpEvent?, RequestOtpEvent?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<RequestOtpEvent?, RequestOtpEvent?>,
              RequestOtpEvent?,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
