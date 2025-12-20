// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_state.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AuthEvents)
const authEventsProvider = AuthEventsProvider._();

final class AuthEventsProvider
    extends $NotifierProvider<AuthEvents, AuthEvent?> {
  const AuthEventsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'authEventsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$authEventsHash();

  @$internal
  @override
  AuthEvents create() => AuthEvents();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AuthEvent? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AuthEvent?>(value),
    );
  }
}

String _$authEventsHash() => r'9c7b373631e2ecccabb4ae9788c993eef11fc5d0';

abstract class _$AuthEvents extends $Notifier<AuthEvent?> {
  AuthEvent? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AuthEvent?, AuthEvent?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AuthEvent?, AuthEvent?>,
              AuthEvent?,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
