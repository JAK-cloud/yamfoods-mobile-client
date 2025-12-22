// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(cartApiService)
const cartApiServiceProvider = CartApiServiceProvider._();

final class CartApiServiceProvider
    extends $FunctionalProvider<CartApiService, CartApiService, CartApiService>
    with $Provider<CartApiService> {
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
  $ProviderElement<CartApiService> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  CartApiService create(Ref ref) {
    return cartApiService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CartApiService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CartApiService>(value),
    );
  }
}

String _$cartApiServiceHash() => r'ef6e50503d6905730a312df4dfde171a072e5bad';

@ProviderFor(cartRemoteDataSource)
const cartRemoteDataSourceProvider = CartRemoteDataSourceProvider._();

final class CartRemoteDataSourceProvider
    extends
        $FunctionalProvider<
          CartRemoteDataSource,
          CartRemoteDataSource,
          CartRemoteDataSource
        >
    with $Provider<CartRemoteDataSource> {
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
  $ProviderElement<CartRemoteDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  CartRemoteDataSource create(Ref ref) {
    return cartRemoteDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CartRemoteDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CartRemoteDataSource>(value),
    );
  }
}

String _$cartRemoteDataSourceHash() =>
    r'08dec42ccc4383eebb0a5f50a55aab8d4ad61272';

@ProviderFor(cartRepository)
const cartRepositoryProvider = CartRepositoryProvider._();

final class CartRepositoryProvider
    extends $FunctionalProvider<CartRepository, CartRepository, CartRepository>
    with $Provider<CartRepository> {
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
  $ProviderElement<CartRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  CartRepository create(Ref ref) {
    return cartRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CartRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CartRepository>(value),
    );
  }
}

String _$cartRepositoryHash() => r'1bd2343de0dc50facc6bd86b8d56aa2eee17e1a7';

@ProviderFor(addToCartUseCase)
const addToCartUseCaseProvider = AddToCartUseCaseProvider._();

final class AddToCartUseCaseProvider
    extends
        $FunctionalProvider<
          AddToCartUsecase,
          AddToCartUsecase,
          AddToCartUsecase
        >
    with $Provider<AddToCartUsecase> {
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
  $ProviderElement<AddToCartUsecase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  AddToCartUsecase create(Ref ref) {
    return addToCartUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AddToCartUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AddToCartUsecase>(value),
    );
  }
}

String _$addToCartUseCaseHash() => r'205594e2f41cf566b5d978e997a968ec93a6cffe';

@ProviderFor(increaseCartQuantityUseCase)
const increaseCartQuantityUseCaseProvider =
    IncreaseCartQuantityUseCaseProvider._();

final class IncreaseCartQuantityUseCaseProvider
    extends
        $FunctionalProvider<
          IncreaseCartQuantityUsecase,
          IncreaseCartQuantityUsecase,
          IncreaseCartQuantityUsecase
        >
    with $Provider<IncreaseCartQuantityUsecase> {
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
  $ProviderElement<IncreaseCartQuantityUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  IncreaseCartQuantityUsecase create(Ref ref) {
    return increaseCartQuantityUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(IncreaseCartQuantityUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<IncreaseCartQuantityUsecase>(value),
    );
  }
}

String _$increaseCartQuantityUseCaseHash() =>
    r'3848db4e1844f0fe4ab357214a1e9bc9b7caa4e8';

@ProviderFor(decreaseCartQuantityUseCase)
const decreaseCartQuantityUseCaseProvider =
    DecreaseCartQuantityUseCaseProvider._();

final class DecreaseCartQuantityUseCaseProvider
    extends
        $FunctionalProvider<
          DecreaseCartQuantityUsecase,
          DecreaseCartQuantityUsecase,
          DecreaseCartQuantityUsecase
        >
    with $Provider<DecreaseCartQuantityUsecase> {
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
  $ProviderElement<DecreaseCartQuantityUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  DecreaseCartQuantityUsecase create(Ref ref) {
    return decreaseCartQuantityUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DecreaseCartQuantityUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DecreaseCartQuantityUsecase>(value),
    );
  }
}

String _$decreaseCartQuantityUseCaseHash() =>
    r'e45190cfbfc483ff6c03492b536ade6250f6f5f3';

@ProviderFor(getAllCartsUseCase)
const getAllCartsUseCaseProvider = GetAllCartsUseCaseProvider._();

final class GetAllCartsUseCaseProvider
    extends
        $FunctionalProvider<
          GetAllCartsUsecase,
          GetAllCartsUsecase,
          GetAllCartsUsecase
        >
    with $Provider<GetAllCartsUsecase> {
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
  $ProviderElement<GetAllCartsUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetAllCartsUsecase create(Ref ref) {
    return getAllCartsUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetAllCartsUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetAllCartsUsecase>(value),
    );
  }
}

String _$getAllCartsUseCaseHash() =>
    r'a453d591f0c4981df3aa4cf133aa5ce9a1a28d5a';

@ProviderFor(deleteCartItemUseCase)
const deleteCartItemUseCaseProvider = DeleteCartItemUseCaseProvider._();

final class DeleteCartItemUseCaseProvider
    extends
        $FunctionalProvider<
          DeleteCartItemUsecase,
          DeleteCartItemUsecase,
          DeleteCartItemUsecase
        >
    with $Provider<DeleteCartItemUsecase> {
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
  $ProviderElement<DeleteCartItemUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  DeleteCartItemUsecase create(Ref ref) {
    return deleteCartItemUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DeleteCartItemUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DeleteCartItemUsecase>(value),
    );
  }
}

String _$deleteCartItemUseCaseHash() =>
    r'6d84c3cf237a010429d08ccf7c76dec86dc95d6c';

@ProviderFor(deleteAllCartItemsUseCase)
const deleteAllCartItemsUseCaseProvider = DeleteAllCartItemsUseCaseProvider._();

final class DeleteAllCartItemsUseCaseProvider
    extends
        $FunctionalProvider<
          DeleteAllCartItemsUsecase,
          DeleteAllCartItemsUsecase,
          DeleteAllCartItemsUsecase
        >
    with $Provider<DeleteAllCartItemsUsecase> {
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
  $ProviderElement<DeleteAllCartItemsUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  DeleteAllCartItemsUsecase create(Ref ref) {
    return deleteAllCartItemsUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DeleteAllCartItemsUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DeleteAllCartItemsUsecase>(value),
    );
  }
}

String _$deleteAllCartItemsUseCaseHash() =>
    r'478e4cbe3f035c6dae45ec0100b1bb471937de83';
