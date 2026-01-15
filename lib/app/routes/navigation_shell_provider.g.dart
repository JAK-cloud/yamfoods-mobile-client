// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'navigation_shell_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Stores the current [StatefulNavigationShell] so deep widgets (like empty states)
/// can request a **tab switch** without doing route navigation.
///
/// This is the production-safe fix for cases like "Browse Menu" inside Cart/Order:
/// we want to switch to the Home tab (branch 0), not push/replace routes.

@ProviderFor(NavigationShell)
const navigationShellProvider = NavigationShellProvider._();

/// Stores the current [StatefulNavigationShell] so deep widgets (like empty states)
/// can request a **tab switch** without doing route navigation.
///
/// This is the production-safe fix for cases like "Browse Menu" inside Cart/Order:
/// we want to switch to the Home tab (branch 0), not push/replace routes.
final class NavigationShellProvider
    extends $NotifierProvider<NavigationShell, StatefulNavigationShell?> {
  /// Stores the current [StatefulNavigationShell] so deep widgets (like empty states)
  /// can request a **tab switch** without doing route navigation.
  ///
  /// This is the production-safe fix for cases like "Browse Menu" inside Cart/Order:
  /// we want to switch to the Home tab (branch 0), not push/replace routes.
  const NavigationShellProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'navigationShellProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$navigationShellHash();

  @$internal
  @override
  NavigationShell create() => NavigationShell();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(StatefulNavigationShell? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<StatefulNavigationShell?>(value),
    );
  }
}

String _$navigationShellHash() => r'b3e57fe129cda0b88f8626a0d90a2b535b67578a';

/// Stores the current [StatefulNavigationShell] so deep widgets (like empty states)
/// can request a **tab switch** without doing route navigation.
///
/// This is the production-safe fix for cases like "Browse Menu" inside Cart/Order:
/// we want to switch to the Home tab (branch 0), not push/replace routes.

abstract class _$NavigationShell extends $Notifier<StatefulNavigationShell?> {
  StatefulNavigationShell? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref as $Ref<StatefulNavigationShell?, StatefulNavigationShell?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<StatefulNavigationShell?, StatefulNavigationShell?>,
              StatefulNavigationShell?,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
