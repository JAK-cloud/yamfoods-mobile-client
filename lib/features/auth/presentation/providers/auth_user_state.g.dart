// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_user_state.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Persistent authentication state provider - Single Source of Truth
///
/// This provider is the ONLY place that determines authentication status.
/// - Auto-initializes on first access by checking local storage
/// - Returns cached state immediately if already loaded (no local storage reads)
/// - Only checks if user exists in local storage (no token validation)
///
/// Token refresh is handled by AuthInterceptor when making API calls.
/// This allows users to access the app even when offline.
///
/// For simple usage, use the derived providers below:
/// - `isAuthenticatedProvider` - returns simple `bool`
/// - `currentUserProvider` - returns `User?`
///
/// See docs/auth_state_simple_usage.md for examples.
///
/// Note: This is separate from `AuthEvents` which are one-time UI events.

@ProviderFor(AuthUserState)
const authUserStateProvider = AuthUserStateProvider._();

/// Persistent authentication state provider - Single Source of Truth
///
/// This provider is the ONLY place that determines authentication status.
/// - Auto-initializes on first access by checking local storage
/// - Returns cached state immediately if already loaded (no local storage reads)
/// - Only checks if user exists in local storage (no token validation)
///
/// Token refresh is handled by AuthInterceptor when making API calls.
/// This allows users to access the app even when offline.
///
/// For simple usage, use the derived providers below:
/// - `isAuthenticatedProvider` - returns simple `bool`
/// - `currentUserProvider` - returns `User?`
///
/// See docs/auth_state_simple_usage.md for examples.
///
/// Note: This is separate from `AuthEvents` which are one-time UI events.
final class AuthUserStateProvider
    extends $AsyncNotifierProvider<AuthUserState, User?> {
  /// Persistent authentication state provider - Single Source of Truth
  ///
  /// This provider is the ONLY place that determines authentication status.
  /// - Auto-initializes on first access by checking local storage
  /// - Returns cached state immediately if already loaded (no local storage reads)
  /// - Only checks if user exists in local storage (no token validation)
  ///
  /// Token refresh is handled by AuthInterceptor when making API calls.
  /// This allows users to access the app even when offline.
  ///
  /// For simple usage, use the derived providers below:
  /// - `isAuthenticatedProvider` - returns simple `bool`
  /// - `currentUserProvider` - returns `User?`
  ///
  /// See docs/auth_state_simple_usage.md for examples.
  ///
  /// Note: This is separate from `AuthEvents` which are one-time UI events.
  const AuthUserStateProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'authUserStateProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$authUserStateHash();

  @$internal
  @override
  AuthUserState create() => AuthUserState();
}

String _$authUserStateHash() => r'291296a53eb62cd7238ad2ef02aa44ab7edfc273';

/// Persistent authentication state provider - Single Source of Truth
///
/// This provider is the ONLY place that determines authentication status.
/// - Auto-initializes on first access by checking local storage
/// - Returns cached state immediately if already loaded (no local storage reads)
/// - Only checks if user exists in local storage (no token validation)
///
/// Token refresh is handled by AuthInterceptor when making API calls.
/// This allows users to access the app even when offline.
///
/// For simple usage, use the derived providers below:
/// - `isAuthenticatedProvider` - returns simple `bool`
/// - `currentUserProvider` - returns `User?`
///
/// See docs/auth_state_simple_usage.md for examples.
///
/// Note: This is separate from `AuthEvents` which are one-time UI events.

abstract class _$AuthUserState extends $AsyncNotifier<User?> {
  FutureOr<User?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<User?>, User?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<User?>, User?>,
              AsyncValue<User?>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

/// Simple boolean provider for authentication status
///
/// Returns `true` if user is authenticated, `false` otherwise.
/// Handles loading/error states internally - returns `false` during loading or on error.
///
/// Usage:
/// ```dart
/// final isAuthenticated = ref.watch(isAuthenticatedProvider);
/// if (isAuthenticated) {
///   // User is authenticated
/// } else {
///   // User is not authenticated
/// }
/// ```

@ProviderFor(isAuthenticated)
const isAuthenticatedProvider = IsAuthenticatedProvider._();

/// Simple boolean provider for authentication status
///
/// Returns `true` if user is authenticated, `false` otherwise.
/// Handles loading/error states internally - returns `false` during loading or on error.
///
/// Usage:
/// ```dart
/// final isAuthenticated = ref.watch(isAuthenticatedProvider);
/// if (isAuthenticated) {
///   // User is authenticated
/// } else {
///   // User is not authenticated
/// }
/// ```

final class IsAuthenticatedProvider
    extends $FunctionalProvider<bool, bool, bool>
    with $Provider<bool> {
  /// Simple boolean provider for authentication status
  ///
  /// Returns `true` if user is authenticated, `false` otherwise.
  /// Handles loading/error states internally - returns `false` during loading or on error.
  ///
  /// Usage:
  /// ```dart
  /// final isAuthenticated = ref.watch(isAuthenticatedProvider);
  /// if (isAuthenticated) {
  ///   // User is authenticated
  /// } else {
  ///   // User is not authenticated
  /// }
  /// ```
  const IsAuthenticatedProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'isAuthenticatedProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$isAuthenticatedHash();

  @$internal
  @override
  $ProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  bool create(Ref ref) {
    return isAuthenticated(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$isAuthenticatedHash() => r'98346ca13ac81f6df17d76d94dc1b2d8f57adddc';

/// Current user provider (nullable)
///
/// Returns the current authenticated user, or `null` if not authenticated.
/// Handles loading/error states internally - returns `null` during loading or on error.
///
/// Usage:
/// ```dart
/// final user = ref.watch(currentUserProvider);
/// if (user != null) {
///   Text('Welcome, ${user.name}!');
/// }
/// ```

@ProviderFor(currentUser)
const currentUserProvider = CurrentUserProvider._();

/// Current user provider (nullable)
///
/// Returns the current authenticated user, or `null` if not authenticated.
/// Handles loading/error states internally - returns `null` during loading or on error.
///
/// Usage:
/// ```dart
/// final user = ref.watch(currentUserProvider);
/// if (user != null) {
///   Text('Welcome, ${user.name}!');
/// }
/// ```

final class CurrentUserProvider extends $FunctionalProvider<User?, User?, User?>
    with $Provider<User?> {
  /// Current user provider (nullable)
  ///
  /// Returns the current authenticated user, or `null` if not authenticated.
  /// Handles loading/error states internally - returns `null` during loading or on error.
  ///
  /// Usage:
  /// ```dart
  /// final user = ref.watch(currentUserProvider);
  /// if (user != null) {
  ///   Text('Welcome, ${user.name}!');
  /// }
  /// ```
  const CurrentUserProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'currentUserProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$currentUserHash();

  @$internal
  @override
  $ProviderElement<User?> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  User? create(Ref ref) {
    return currentUser(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(User? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<User?>(value),
    );
  }
}

String _$currentUserHash() => r'cdbfe8a68a3e37085e233220b11fd63d8b0e4a26';
