// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validate_otp_event.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ValidateOtpEvents)
const validateOtpEventsProvider = ValidateOtpEventsProvider._();

final class ValidateOtpEventsProvider
    extends $NotifierProvider<ValidateOtpEvents, ValidateOtpEvent?> {
  const ValidateOtpEventsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'validateOtpEventsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$validateOtpEventsHash();

  @$internal
  @override
  ValidateOtpEvents create() => ValidateOtpEvents();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ValidateOtpEvent? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ValidateOtpEvent?>(value),
    );
  }
}

String _$validateOtpEventsHash() => r'3500c4d90a67ba06179b6006abdbb0d7b4824922';

abstract class _$ValidateOtpEvents extends $Notifier<ValidateOtpEvent?> {
  ValidateOtpEvent? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<ValidateOtpEvent?, ValidateOtpEvent?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<ValidateOtpEvent?, ValidateOtpEvent?>,
              ValidateOtpEvent?,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
