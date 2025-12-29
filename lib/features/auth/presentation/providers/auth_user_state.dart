import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'auth_providers.dart';
import '../../domain/entities/user.dart';

part 'auth_user_state.g.dart';

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
@Riverpod(keepAlive: true)
class AuthUserState extends _$AuthUserState {
  @override
  Future<User?> build() async {
    return _checkAuthState();
  }

  /// Checks authentication state from local storage
  ///
  /// Only checks if user exists in local storage - no token validation.
  /// Token refresh is handled by AuthInterceptor when making API calls.
  ///
  /// Optimization: If state is already set (from previous login), returns immediately.
  /// Only checks local storage if state is null (e.g., on app restart).
  Future<User?> _checkAuthState() async {
    // If state is already set (from previous login), return immediately
    // This avoids unnecessary local storage reads
    if (state.hasValue && state.value != null) {
      return state.value;
    }

    // State is null or not yet loaded, so check local storage
    final localDataSource = await ref.read(authLocalDataSourceProvider.future);

    try {
      // Only check if user exists - don't validate token here
      // Token validation and refresh is handled by AuthInterceptor
      final user = await localDataSource.getUser();
      return user;
    } catch (e) {
      // On error, assume not authenticated
      return null;
    }
  }

  /// Sets the authenticated user (called after successful login/register)
  ///
  /// This updates the state immediately, so future reads return instantly.
  Future<void> setUser(User user) async {
    state = AsyncValue.data(user);
  }

  /// Clears the authenticated user (called on logout)
  ///
  /// This clears the state, so next read will check local storage again.
  /// Logout method in the repository also clears the local storage of the user.
  /// So we don't need to clear the user here.
  Future<void> clearUser() async {
    state = const AsyncValue.data(null);
  }

  /// Refreshes the auth state from local storage
  ///
  /// Useful when you need to force a re-check (e.g., after token refresh).
  Future<void> refresh() async {
    state = const AsyncValue.loading();
    state = AsyncValue.data(await _checkAuthState());
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
@riverpod
bool isAuthenticated(Ref ref) {
  final authState = ref.watch(authUserStateProvider);
  // Return true only if we have a user, false for loading/error/null
  return authState.hasValue && authState.value != null;
}

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
@riverpod
User? currentUser(Ref ref) {
  final authState = ref.watch(authUserStateProvider);
  return authState.hasValue ? authState.value : null;
}
