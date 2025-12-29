// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Cart API service provider
///
/// Uses dioClientProvider (with auth interceptor) because all cart endpoints
/// are protected and require authentication:
/// - getAllCarts, addToCart, increaseCartQuantity, decreaseCartQuantity,
///   deleteCartItem, deleteAllCartItems

@ProviderFor(cartApiService)
const cartApiServiceProvider = CartApiServiceProvider._();

/// Cart API service provider
///
/// Uses dioClientProvider (with auth interceptor) because all cart endpoints
/// are protected and require authentication:
/// - getAllCarts, addToCart, increaseCartQuantity, decreaseCartQuantity,
///   deleteCartItem, deleteAllCartItems

final class CartApiServiceProvider
    extends
        $FunctionalProvider<
          AsyncValue<CartApiService>,
          CartApiService,
          FutureOr<CartApiService>
        >
    with $FutureModifier<CartApiService>, $FutureProvider<CartApiService> {
  /// Cart API service provider
  ///
  /// Uses dioClientProvider (with auth interceptor) because all cart endpoints
  /// are protected and require authentication:
  /// - getAllCarts, addToCart, increaseCartQuantity, decreaseCartQuantity,
  ///   deleteCartItem, deleteAllCartItems
  const CartApiServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'cartApiServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$cartApiServiceHash();

  @$internal
  @override
  $FutureProviderElement<CartApiService> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<CartApiService> create(Ref ref) {
    return cartApiService(ref);
  }
}

String _$cartApiServiceHash() => r'a86e0d44c7599e1b22b10243ab17f0d0b38bdf2b';

@ProviderFor(cartRemoteDataSource)
const cartRemoteDataSourceProvider = CartRemoteDataSourceProvider._();

final class CartRemoteDataSourceProvider
    extends
        $FunctionalProvider<
          AsyncValue<CartRemoteDataSource>,
          CartRemoteDataSource,
          FutureOr<CartRemoteDataSource>
        >
    with
        $FutureModifier<CartRemoteDataSource>,
        $FutureProvider<CartRemoteDataSource> {
  const CartRemoteDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'cartRemoteDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$cartRemoteDataSourceHash();

  @$internal
  @override
  $FutureProviderElement<CartRemoteDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<CartRemoteDataSource> create(Ref ref) {
    return cartRemoteDataSource(ref);
  }
}

String _$cartRemoteDataSourceHash() =>
    r'80b841638e8d3086b3e26158fd92e0530c1c29b4';

@ProviderFor(cartRepository)
const cartRepositoryProvider = CartRepositoryProvider._();

final class CartRepositoryProvider
    extends
        $FunctionalProvider<
          AsyncValue<CartRepository>,
          CartRepository,
          FutureOr<CartRepository>
        >
    with $FutureModifier<CartRepository>, $FutureProvider<CartRepository> {
  const CartRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'cartRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$cartRepositoryHash();

  @$internal
  @override
  $FutureProviderElement<CartRepository> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<CartRepository> create(Ref ref) {
    return cartRepository(ref);
  }
}

String _$cartRepositoryHash() => r'5d6935cf9020e8d1f7996f4e09ba7fbab462144b';

@ProviderFor(addToCartUseCase)
const addToCartUseCaseProvider = AddToCartUseCaseProvider._();

final class AddToCartUseCaseProvider
    extends
        $FunctionalProvider<
          AsyncValue<AddToCartUsecase>,
          AddToCartUsecase,
          FutureOr<AddToCartUsecase>
        >
    with $FutureModifier<AddToCartUsecase>, $FutureProvider<AddToCartUsecase> {
  const AddToCartUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'addToCartUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$addToCartUseCaseHash();

  @$internal
  @override
  $FutureProviderElement<AddToCartUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<AddToCartUsecase> create(Ref ref) {
    return addToCartUseCase(ref);
  }
}

String _$addToCartUseCaseHash() => r'304f92837b58380f5f2846e481b0f84b2f63f71f';

@ProviderFor(increaseCartQuantityUseCase)
const increaseCartQuantityUseCaseProvider =
    IncreaseCartQuantityUseCaseProvider._();

final class IncreaseCartQuantityUseCaseProvider
    extends
        $FunctionalProvider<
          AsyncValue<IncreaseCartQuantityUsecase>,
          IncreaseCartQuantityUsecase,
          FutureOr<IncreaseCartQuantityUsecase>
        >
    with
        $FutureModifier<IncreaseCartQuantityUsecase>,
        $FutureProvider<IncreaseCartQuantityUsecase> {
  const IncreaseCartQuantityUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'increaseCartQuantityUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$increaseCartQuantityUseCaseHash();

  @$internal
  @override
  $FutureProviderElement<IncreaseCartQuantityUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<IncreaseCartQuantityUsecase> create(Ref ref) {
    return increaseCartQuantityUseCase(ref);
  }
}

String _$increaseCartQuantityUseCaseHash() =>
    r'9090ef6a45fdb3d3b238766dde738e7e53edfbfd';

@ProviderFor(decreaseCartQuantityUseCase)
const decreaseCartQuantityUseCaseProvider =
    DecreaseCartQuantityUseCaseProvider._();

final class DecreaseCartQuantityUseCaseProvider
    extends
        $FunctionalProvider<
          AsyncValue<DecreaseCartQuantityUsecase>,
          DecreaseCartQuantityUsecase,
          FutureOr<DecreaseCartQuantityUsecase>
        >
    with
        $FutureModifier<DecreaseCartQuantityUsecase>,
        $FutureProvider<DecreaseCartQuantityUsecase> {
  const DecreaseCartQuantityUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'decreaseCartQuantityUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$decreaseCartQuantityUseCaseHash();

  @$internal
  @override
  $FutureProviderElement<DecreaseCartQuantityUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<DecreaseCartQuantityUsecase> create(Ref ref) {
    return decreaseCartQuantityUseCase(ref);
  }
}

String _$decreaseCartQuantityUseCaseHash() =>
    r'f347a69f95a58a0629ea5ca5cba56635fad6a9c9';

@ProviderFor(getAllCartsUseCase)
const getAllCartsUseCaseProvider = GetAllCartsUseCaseProvider._();

final class GetAllCartsUseCaseProvider
    extends
        $FunctionalProvider<
          AsyncValue<GetAllCartsUsecase>,
          GetAllCartsUsecase,
          FutureOr<GetAllCartsUsecase>
        >
    with
        $FutureModifier<GetAllCartsUsecase>,
        $FutureProvider<GetAllCartsUsecase> {
  const GetAllCartsUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getAllCartsUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getAllCartsUseCaseHash();

  @$internal
  @override
  $FutureProviderElement<GetAllCartsUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<GetAllCartsUsecase> create(Ref ref) {
    return getAllCartsUseCase(ref);
  }
}

String _$getAllCartsUseCaseHash() =>
    r'20902e81421c1dc00e14cc94f189e314c6c02e83';

@ProviderFor(deleteCartItemUseCase)
const deleteCartItemUseCaseProvider = DeleteCartItemUseCaseProvider._();

final class DeleteCartItemUseCaseProvider
    extends
        $FunctionalProvider<
          AsyncValue<DeleteCartItemUsecase>,
          DeleteCartItemUsecase,
          FutureOr<DeleteCartItemUsecase>
        >
    with
        $FutureModifier<DeleteCartItemUsecase>,
        $FutureProvider<DeleteCartItemUsecase> {
  const DeleteCartItemUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'deleteCartItemUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$deleteCartItemUseCaseHash();

  @$internal
  @override
  $FutureProviderElement<DeleteCartItemUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<DeleteCartItemUsecase> create(Ref ref) {
    return deleteCartItemUseCase(ref);
  }
}

String _$deleteCartItemUseCaseHash() =>
    r'1c2f2befbf2e9b1acc7e442964093d98e45f475b';

@ProviderFor(deleteAllCartItemsUseCase)
const deleteAllCartItemsUseCaseProvider = DeleteAllCartItemsUseCaseProvider._();

final class DeleteAllCartItemsUseCaseProvider
    extends
        $FunctionalProvider<
          AsyncValue<DeleteAllCartItemsUsecase>,
          DeleteAllCartItemsUsecase,
          FutureOr<DeleteAllCartItemsUsecase>
        >
    with
        $FutureModifier<DeleteAllCartItemsUsecase>,
        $FutureProvider<DeleteAllCartItemsUsecase> {
  const DeleteAllCartItemsUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'deleteAllCartItemsUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$deleteAllCartItemsUseCaseHash();

  @$internal
  @override
  $FutureProviderElement<DeleteAllCartItemsUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<DeleteAllCartItemsUsecase> create(Ref ref) {
    return deleteAllCartItemsUseCase(ref);
  }
}

String _$deleteAllCartItemsUseCaseHash() =>
    r'47ebaa9cbf92f0908058186026991770bcac3290';

/// Provider that returns the current cart item count for a branch.
///
/// Returns 0 if cart is not loaded yet or empty.

@ProviderFor(cartItemCount)
const cartItemCountProvider = CartItemCountFamily._();

/// Provider that returns the current cart item count for a branch.
///
/// Returns 0 if cart is not loaded yet or empty.

final class CartItemCountProvider extends $FunctionalProvider<int, int, int>
    with $Provider<int> {
  /// Provider that returns the current cart item count for a branch.
  ///
  /// Returns 0 if cart is not loaded yet or empty.
  const CartItemCountProvider._({
    required CartItemCountFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'cartItemCountProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$cartItemCountHash();

  @override
  String toString() {
    return r'cartItemCountProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $ProviderElement<int> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  int create(Ref ref) {
    final argument = this.argument as int;
    return cartItemCount(ref, argument);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(int value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<int>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is CartItemCountProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$cartItemCountHash() => r'ae46209197533ece6911b06a87add2ddbb997993';

/// Provider that returns the current cart item count for a branch.
///
/// Returns 0 if cart is not loaded yet or empty.

final class CartItemCountFamily extends $Family
    with $FunctionalFamilyOverride<int, int> {
  const CartItemCountFamily._()
    : super(
        retry: null,
        name: r'cartItemCountProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// Provider that returns the current cart item count for a branch.
  ///
  /// Returns 0 if cart is not loaded yet or empty.

  CartItemCountProvider call(int branchId) =>
      CartItemCountProvider._(argument: branchId, from: this);

  @override
  String toString() => r'cartItemCountProvider';
}

/// Provider that checks if more items can be added to cart.
///
/// Returns `true` if cart has less than [AppConstants.maxCartItems] items,
/// `false` otherwise.

@ProviderFor(canAddToCart)
const canAddToCartProvider = CanAddToCartFamily._();

/// Provider that checks if more items can be added to cart.
///
/// Returns `true` if cart has less than [AppConstants.maxCartItems] items,
/// `false` otherwise.

final class CanAddToCartProvider extends $FunctionalProvider<bool, bool, bool>
    with $Provider<bool> {
  /// Provider that checks if more items can be added to cart.
  ///
  /// Returns `true` if cart has less than [AppConstants.maxCartItems] items,
  /// `false` otherwise.
  const CanAddToCartProvider._({
    required CanAddToCartFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'canAddToCartProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$canAddToCartHash();

  @override
  String toString() {
    return r'canAddToCartProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $ProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  bool create(Ref ref) {
    final argument = this.argument as int;
    return canAddToCart(ref, argument);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is CanAddToCartProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$canAddToCartHash() => r'806c9761e55ef7b1d6605a8acf545bb9af9bbf9a';

/// Provider that checks if more items can be added to cart.
///
/// Returns `true` if cart has less than [AppConstants.maxCartItems] items,
/// `false` otherwise.

final class CanAddToCartFamily extends $Family
    with $FunctionalFamilyOverride<bool, int> {
  const CanAddToCartFamily._()
    : super(
        retry: null,
        name: r'canAddToCartProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// Provider that checks if more items can be added to cart.
  ///
  /// Returns `true` if cart has less than [AppConstants.maxCartItems] items,
  /// `false` otherwise.

  CanAddToCartProvider call(int branchId) =>
      CanAddToCartProvider._(argument: branchId, from: this);

  @override
  String toString() => r'canAddToCartProvider';
}
