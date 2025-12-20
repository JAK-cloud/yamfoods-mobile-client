// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reset_password_event.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ResetPasswordEvents)
const resetPasswordEventsProvider = ResetPasswordEventsProvider._();

final class ResetPasswordEventsProvider
    extends $NotifierProvider<ResetPasswordEvents, ResetPasswordEvent?> {
  const ResetPasswordEventsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'resetPasswordEventsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$resetPasswordEventsHash();

  @$internal
  @override
  ResetPasswordEvents create() => ResetPasswordEvents();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ResetPasswordEvent? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ResetPasswordEvent?>(value),
    );
  }
}

String _$resetPasswordEventsHash() =>
    r'b7c4e952eff2c894b9ce80a3b4d01b33d365aa21';

abstract class _$ResetPasswordEvents extends $Notifier<ResetPasswordEvent?> {
  ResetPasswordEvent? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<ResetPasswordEvent?, ResetPasswordEvent?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<ResetPasswordEvent?, ResetPasswordEvent?>,
              ResetPasswordEvent?,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
