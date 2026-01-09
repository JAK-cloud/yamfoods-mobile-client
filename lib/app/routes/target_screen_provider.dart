import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'target_screen_provider.g.dart';

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
@Riverpod(keepAlive: true)
class TargetScreen extends _$TargetScreen {
  @override
  String? build() => null;

  /// Sets the target screen route.
  void set(String route) {
    state = route;
  }

  /// Clears the target screen.
  void clear() {
    state = null;
  }
}
