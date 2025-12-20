// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_event.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(RegisterUiEvents)
const registerUiEventsProvider = RegisterUiEventsProvider._();

final class RegisterUiEventsProvider
    extends $NotifierProvider<RegisterUiEvents, RegisterUiEvent?> {
  const RegisterUiEventsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'registerUiEventsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$registerUiEventsHash();

  @$internal
  @override
  RegisterUiEvents create() => RegisterUiEvents();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RegisterUiEvent? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<RegisterUiEvent?>(value),
    );
  }
}

String _$registerUiEventsHash() => r'0bb834870d44acc0de68496322977b21e66a504f';

abstract class _$RegisterUiEvents extends $Notifier<RegisterUiEvent?> {
  RegisterUiEvent? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<RegisterUiEvent?, RegisterUiEvent?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<RegisterUiEvent?, RegisterUiEvent?>,
              RegisterUiEvent?,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
