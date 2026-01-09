// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'target_screen_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Provider to store the target screen route where user wanted to navigate.
///
/// Used when a guest user tries to access a protected route or perform
/// a protected action. After successful login, user is navigated to this route.
///
/// **CRITICAL:** Uses `keepAlive: true` to persist state across navigation.
/// Without this, the provider would be disposed when navigating to login screen,
/// losing the saved targetScreen value.
///
/// Usage:
/// ```dart
/// // Save target screen
/// ref.read(targetScreenProvider.notifier).set('/cart');
///
/// // Get target screen
/// final target = ref.read(targetScreenProvider);
///
/// // Clear target screen
/// ref.read(targetScreenProvider.notifier).clear();
/// ```

@ProviderFor(TargetScreen)
const targetScreenProvider = TargetScreenProvider._();

/// Provider to store the target screen route where user wanted to navigate.
///
/// Used when a guest user tries to access a protected route or perform
/// a protected action. After successful login, user is navigated to this route.
///
/// **CRITICAL:** Uses `keepAlive: true` to persist state across navigation.
/// Without this, the provider would be disposed when navigating to login screen,
/// losing the saved targetScreen value.
///
/// Usage:
/// ```dart
/// // Save target screen
/// ref.read(targetScreenProvider.notifier).set('/cart');
///
/// // Get target screen
/// final target = ref.read(targetScreenProvider);
///
/// // Clear target screen
/// ref.read(targetScreenProvider.notifier).clear();
/// ```
final class TargetScreenProvider
    extends $NotifierProvider<TargetScreen, String?> {
  /// Provider to store the target screen route where user wanted to navigate.
  ///
  /// Used when a guest user tries to access a protected route or perform
  /// a protected action. After successful login, user is navigated to this route.
  ///
  /// **CRITICAL:** Uses `keepAlive: true` to persist state across navigation.
  /// Without this, the provider would be disposed when navigating to login screen,
  /// losing the saved targetScreen value.
  ///
  /// Usage:
  /// ```dart
  /// // Save target screen
  /// ref.read(targetScreenProvider.notifier).set('/cart');
  ///
  /// // Get target screen
  /// final target = ref.read(targetScreenProvider);
  ///
  /// // Clear target screen
  /// ref.read(targetScreenProvider.notifier).clear();
  /// ```
  const TargetScreenProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'targetScreenProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$targetScreenHash();

  @$internal
  @override
  TargetScreen create() => TargetScreen();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String?>(value),
    );
  }
}

String _$targetScreenHash() => r'0a16ab0704e9b4d02647326cd96baf2e2f423cc3';

/// Provider to store the target screen route where user wanted to navigate.
///
/// Used when a guest user tries to access a protected route or perform
/// a protected action. After successful login, user is navigated to this route.
///
/// **CRITICAL:** Uses `keepAlive: true` to persist state across navigation.
/// Without this, the provider would be disposed when navigating to login screen,
/// losing the saved targetScreen value.
///
/// Usage:
/// ```dart
/// // Save target screen
/// ref.read(targetScreenProvider.notifier).set('/cart');
///
/// // Get target screen
/// final target = ref.read(targetScreenProvider);
///
/// // Clear target screen
/// ref.read(targetScreenProvider.notifier).clear();
/// ```

abstract class _$TargetScreen extends $Notifier<String?> {
  String? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<String?, String?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<String?, String?>,
              String?,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
