// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Manages cart list state and CRUD operations for a specific branch.
///
/// **State Management:**
/// - Optimistically updates local state on success
/// - Emits UI events for success/failure
/// - Tracks loading states per operation

@ProviderFor(CartNotifier)
const cartProvider = CartNotifierFamily._();

/// Manages cart list state and CRUD operations for a specific branch.
///
/// **State Management:**
/// - Optimistically updates local state on success
/// - Emits UI events for success/failure
/// - Tracks loading states per operation
final class CartNotifierProvider
    extends $AsyncNotifierProvider<CartNotifier, List<Cart>> {
  /// Manages cart list state and CRUD operations for a specific branch.
  ///
  /// **State Management:**
  /// - Optimistically updates local state on success
  /// - Emits UI events for success/failure
  /// - Tracks loading states per operation
  const CartNotifierProvider._({
    required CartNotifierFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'cartProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$cartNotifierHash();

  @override
  String toString() {
    return r'cartProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  CartNotifier create() => CartNotifier();

  @override
  bool operator ==(Object other) {
    return other is CartNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$cartNotifierHash() => r'c943db7a49033c339737a05c158a89983d83b551';

/// Manages cart list state and CRUD operations for a specific branch.
///
/// **State Management:**
/// - Optimistically updates local state on success
/// - Emits UI events for success/failure
/// - Tracks loading states per operation

final class CartNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          CartNotifier,
          AsyncValue<List<Cart>>,
          List<Cart>,
          FutureOr<List<Cart>>,
          int
        > {
  const CartNotifierFamily._()
    : super(
        retry: null,
        name: r'cartProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// Manages cart list state and CRUD operations for a specific branch.
  ///
  /// **State Management:**
  /// - Optimistically updates local state on success
  /// - Emits UI events for success/failure
  /// - Tracks loading states per operation

  CartNotifierProvider call(int branchId) =>
      CartNotifierProvider._(argument: branchId, from: this);

  @override
  String toString() => r'cartProvider';
}

/// Manages cart list state and CRUD operations for a specific branch.
///
/// **State Management:**
/// - Optimistically updates local state on success
/// - Emits UI events for success/failure
/// - Tracks loading states per operation

abstract class _$CartNotifier extends $AsyncNotifier<List<Cart>> {
  late final _$args = ref.$arg as int;
  int get branchId => _$args;

  FutureOr<List<Cart>> build(int branchId);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref = this.ref as $Ref<AsyncValue<List<Cart>>, List<Cart>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<Cart>>, List<Cart>>,
              AsyncValue<List<Cart>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
