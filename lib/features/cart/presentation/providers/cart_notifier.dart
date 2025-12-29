import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../domain/entities/cart.dart';
import '../../domain/entities/cart_request_data.dart';
import 'cart_providers.dart';
import 'cart_events.dart';
import 'cart_loading_providers.dart';

part 'cart_notifier.g.dart';

/// Manages cart list state and CRUD operations for a specific branch.
///
/// **State Management:**
/// - Optimistically updates local state on success
/// - Emits UI events for success/failure
/// - Tracks loading states per operation
@riverpod
class CartNotifier extends _$CartNotifier {
  @override
  Future<List<Cart>> build(int branchId) async {
    return await _load(branchId);
  }

  Future<void> load(int branchId) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => _load(branchId));
  }

  Future<void> addToCart(CartRequestData data) async {
    final addLoading = ref.read(cartAddLoadingProvider.notifier);
    addLoading.setLoading(true);

    try {
      final useCase = await ref.read(addToCartUseCaseProvider.future);
      final result = await useCase.call(data);

      result.fold(
        (failure) {
          ref.read(cartUiEventsProvider.notifier).emit(CartFailure(failure));
        },
        (_) {
          // Reload carts to get the latest state after adding item
          load(branchId);
          ref
              .read(cartUiEventsProvider.notifier)
              .emit(CartItemAdded('Item added to cart successfully'));
        },
      );
    } finally {
      addLoading.setLoading(false);
    }
  }

  Future<void> increaseQuantity(int cartId) async {
    final updating = ref.read(cartQuantityUpdateLoadingProvider.notifier);
    updating.start(cartId);

    try {
      // Save current state as reserve before optimistic update
      final current = state.value ?? const <Cart>[];
      final reserveState = List<Cart>.from(current);

      // Optimistic update: increase quantity locally
      final list = List<Cart>.from(current);
      final idx = list.indexWhere((c) => c.id == cartId);
      if (idx != -1) {
        final cart = list[idx];
        list[idx] = cart.copyWith(quantity: cart.quantity + 1);
        state = AsyncValue.data(list);

        // Get productId from cart to call API
        final productId = cart.productId;
        final useCase = await ref.read(
          increaseCartQuantityUseCaseProvider.future,
        );
        final result = await useCase.call(productId);

        result.fold(
          (failure) {
            // Restore from reserve on failure (no load() call to preserve state)
            state = AsyncValue.data(reserveState);
            ref.read(cartUiEventsProvider.notifier).emit(CartFailure(failure));
          },
          (_) {
            ref
                .read(cartUiEventsProvider.notifier)
                .emit(CartQuantityIncreased(cartId, 'Quantity increased'));
          },
        );
      }
    } finally {
      updating.stop(cartId);
    }
  }

  Future<void> decreaseQuantity(int cartId) async {
    final updating = ref.read(cartQuantityUpdateLoadingProvider.notifier);
    updating.start(cartId);

    try {
      // Save current state as reserve before optimistic update
      final current = state.value ?? const <Cart>[];
      final reserveState = List<Cart>.from(current);

      // Optimistic update: decrease quantity locally
      final list = List<Cart>.from(current);
      final idx = list.indexWhere((c) => c.id == cartId);
      if (idx != -1) {
        final cart = list[idx];
        final newQuantity = cart.quantity > 1
            ? cart.quantity - 1
            : cart.quantity;
        list[idx] = cart.copyWith(quantity: newQuantity);
        state = AsyncValue.data(list);

        // Get productId from cart to call API
        final productId = cart.productId;
        final useCase = await ref.read(
          decreaseCartQuantityUseCaseProvider.future,
        );
        final result = await useCase.call(productId);

        result.fold(
          (failure) {
            // Restore from reserve on failure (no load() call to preserve state)
            state = AsyncValue.data(reserveState);
            ref.read(cartUiEventsProvider.notifier).emit(CartFailure(failure));
          },
          (_) {
            ref
                .read(cartUiEventsProvider.notifier)
                .emit(CartQuantityDecreased(cartId, 'Quantity decreased'));
          },
        );
      }
    } finally {
      updating.stop(cartId);
    }
  }

  Future<void> deleteCartItem(int cartId) async {
    final deleting = ref.read(cartDeleteLoadingProvider.notifier);
    deleting.start(cartId);

    try {
      // Save current state as reserve before optimistic update
      final current = state.value ?? const <Cart>[];
      final reserveState = List<Cart>.from(current);

      // Optimistic update: remove item locally
      final list = List<Cart>.from(current);
      final cartToDelete = list.firstWhere((c) => c.id == cartId);
      list.removeWhere((c) => c.id == cartId);
      state = AsyncValue.data(list);

      // Get productId from cart to call API
      final productId = cartToDelete.productId;
      final useCase = await ref.read(deleteCartItemUseCaseProvider.future);
      final result = await useCase.call(productId);

      result.fold(
        (failure) {
          // Restore from reserve on failure (no load() call to preserve state)
          state = AsyncValue.data(reserveState);
          ref.read(cartUiEventsProvider.notifier).emit(CartFailure(failure));
        },
        (_) {
          ref
              .read(cartUiEventsProvider.notifier)
              .emit(CartItemDeleted(cartId, 'Item removed from cart'));
        },
      );
    } finally {
      deleting.stop(cartId);
    }
  }

  Future<void> deleteAllCartItems() async {
    final deleteAllLoading = ref.read(cartDeleteAllLoadingProvider.notifier);
    deleteAllLoading.setLoading(true);

    try {
      // Save current state as reserve before optimistic update
      final current = state.value ?? const <Cart>[];
      final reserveState = List<Cart>.from(current);

      // Optimistic update: clear list locally
      state = const AsyncValue.data([]);

      final useCase = await ref.read(deleteAllCartItemsUseCaseProvider.future);
      final result = await useCase.call();

      result.fold(
        (failure) {
          // Restore from reserve on failure (no load() call to preserve state)
          state = AsyncValue.data(reserveState);
          ref.read(cartUiEventsProvider.notifier).emit(CartFailure(failure));
        },
        (_) {
          ref
              .read(cartUiEventsProvider.notifier)
              .emit(AllCartItemsDeleted('All items removed from cart'));
        },
      );
    } finally {
      deleteAllLoading.setLoading(false);
    }
  }

  /// Throws [Failure] to be caught by [AsyncValue.guard].
  Future<List<Cart>> _load(int branchId) async {
    final useCase = await ref.read(getAllCartsUseCaseProvider.future);
    final result = await useCase.call(branchId);
    return result.fold((failure) {
      throw failure;
    }, (carts) => carts);
  }
}
