// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'animation_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
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

@ProviderFor(cartAnimationController)
const cartAnimationControllerProvider = CartAnimationControllerFamily._();

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

final class CartAnimationControllerProvider
    extends
        $FunctionalProvider<
          AnimateToController,
          AnimateToController,
          AnimateToController
        >
    with $Provider<AnimateToController> {
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
  const CartAnimationControllerProvider._({
    required CartAnimationControllerFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'cartAnimationControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$cartAnimationControllerHash();

  @override
  String toString() {
    return r'cartAnimationControllerProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $ProviderElement<AnimateToController> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  AnimateToController create(Ref ref) {
    final argument = this.argument as String;
    return cartAnimationController(ref, argument);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AnimateToController value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AnimateToController>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is CartAnimationControllerProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$cartAnimationControllerHash() =>
    r'63e020decbc6d25e4973e02167f127a4bc6a92a7';

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

final class CartAnimationControllerFamily extends $Family
    with $FunctionalFamilyOverride<AnimateToController, String> {
  const CartAnimationControllerFamily._()
    : super(
        retry: null,
        name: r'cartAnimationControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

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

  CartAnimationControllerProvider call(String screenId) =>
      CartAnimationControllerProvider._(argument: screenId, from: this);

  @override
  String toString() => r'cartAnimationControllerProvider';
}
