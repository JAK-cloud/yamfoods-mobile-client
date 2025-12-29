import 'package:animate_to/animate_to.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'animation_providers.g.dart';

/// Animation controller provider for cart add-to-cart animations.
///
/// Uses a family provider to create a unique controller instance per screen.
/// Each screen should pass a unique identifier (e.g., route name or screen name).
/// The controller is automatically disposed when no longer needed.
///
/// **Usage:**
/// ```dart
/// final controller = ref.watch(cartAnimationControllerProvider('home'));
/// ```
@riverpod
AnimateToController cartAnimationController(Ref ref, String screenId) {
  final controller = AnimateToController();
  ref.onDispose(() => controller.dispose());
  return controller;
}
