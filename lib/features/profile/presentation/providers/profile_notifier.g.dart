// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Manages profile update and password change operations.
///
/// **State Management:**
/// - Emits UI events for success/failure
/// - Tracks loading state (true = loading, false = not loading)

@ProviderFor(ProfileNotifier)
const profileProvider = ProfileNotifierProvider._();

/// Manages profile update and password change operations.
///
/// **State Management:**
/// - Emits UI events for success/failure
/// - Tracks loading state (true = loading, false = not loading)
final class ProfileNotifierProvider
    extends $NotifierProvider<ProfileNotifier, bool> {
  /// Manages profile update and password change operations.
  ///
  /// **State Management:**
  /// - Emits UI events for success/failure
  /// - Tracks loading state (true = loading, false = not loading)
  const ProfileNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'profileProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$profileNotifierHash();

  @$internal
  @override
  ProfileNotifier create() => ProfileNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$profileNotifierHash() => r'0a89df28e8ccd5071873041bd8245925726b12f7';

/// Manages profile update and password change operations.
///
/// **State Management:**
/// - Emits UI events for success/failure
/// - Tracks loading state (true = loading, false = not loading)

abstract class _$ProfileNotifier extends $Notifier<bool> {
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
