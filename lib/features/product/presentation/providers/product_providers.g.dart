// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(productApiService)
const productApiServiceProvider = ProductApiServiceProvider._();

final class ProductApiServiceProvider
    extends
        $FunctionalProvider<
          ProductApiService,
          ProductApiService,
          ProductApiService
        >
    with $Provider<ProductApiService> {
  const ProductApiServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'productApiServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$productApiServiceHash();

  @$internal
  @override
  $ProviderElement<ProductApiService> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ProductApiService create(Ref ref) {
    return productApiService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ProductApiService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ProductApiService>(value),
    );
  }
}

String _$productApiServiceHash() => r'f06e93959ef9393ea46e073476fbe04b14867249';

@ProviderFor(productRemoteDataSource)
const productRemoteDataSourceProvider = ProductRemoteDataSourceProvider._();

final class ProductRemoteDataSourceProvider
    extends
        $FunctionalProvider<
          ProductRemoteDataSource,
          ProductRemoteDataSource,
          ProductRemoteDataSource
        >
    with $Provider<ProductRemoteDataSource> {
  const ProductRemoteDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'productRemoteDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$productRemoteDataSourceHash();

  @$internal
  @override
  $ProviderElement<ProductRemoteDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ProductRemoteDataSource create(Ref ref) {
    return productRemoteDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ProductRemoteDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ProductRemoteDataSource>(value),
    );
  }
}

String _$productRemoteDataSourceHash() =>
    r'a80ff344cc66a7d0bbebe49533549ab9cdaf47d8';

@ProviderFor(productRepository)
const productRepositoryProvider = ProductRepositoryProvider._();

final class ProductRepositoryProvider
    extends
        $FunctionalProvider<
          ProductRepository,
          ProductRepository,
          ProductRepository
        >
    with $Provider<ProductRepository> {
  const ProductRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'productRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$productRepositoryHash();

  @$internal
  @override
  $ProviderElement<ProductRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ProductRepository create(Ref ref) {
    return productRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ProductRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ProductRepository>(value),
    );
  }
}

String _$productRepositoryHash() => r'3ae178f2642f0ec2588bd2e6b51b2b67141ea468';

@ProviderFor(getAllBranchProductsUsecase)
const getAllBranchProductsUsecaseProvider =
    GetAllBranchProductsUsecaseProvider._();

final class GetAllBranchProductsUsecaseProvider
    extends
        $FunctionalProvider<
          GetAllBranchProductsUsecase,
          GetAllBranchProductsUsecase,
          GetAllBranchProductsUsecase
        >
    with $Provider<GetAllBranchProductsUsecase> {
  const GetAllBranchProductsUsecaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getAllBranchProductsUsecaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getAllBranchProductsUsecaseHash();

  @$internal
  @override
  $ProviderElement<GetAllBranchProductsUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetAllBranchProductsUsecase create(Ref ref) {
    return getAllBranchProductsUsecase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetAllBranchProductsUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetAllBranchProductsUsecase>(value),
    );
  }
}

String _$getAllBranchProductsUsecaseHash() =>
    r'137df676ef579d7a01ebd4673a8fe479020d4786';

@ProviderFor(getAllCategoryProductsUsecase)
const getAllCategoryProductsUsecaseProvider =
    GetAllCategoryProductsUsecaseProvider._();

final class GetAllCategoryProductsUsecaseProvider
    extends
        $FunctionalProvider<
          GetAllCategoryProductsUsecase,
          GetAllCategoryProductsUsecase,
          GetAllCategoryProductsUsecase
        >
    with $Provider<GetAllCategoryProductsUsecase> {
  const GetAllCategoryProductsUsecaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getAllCategoryProductsUsecaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getAllCategoryProductsUsecaseHash();

  @$internal
  @override
  $ProviderElement<GetAllCategoryProductsUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetAllCategoryProductsUsecase create(Ref ref) {
    return getAllCategoryProductsUsecase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetAllCategoryProductsUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetAllCategoryProductsUsecase>(
        value,
      ),
    );
  }
}

String _$getAllCategoryProductsUsecaseHash() =>
    r'1dcc28253694e9d1ede5ceb2e8b670e718e9f2e8';

@ProviderFor(getAllSubcategoryProductsUsecase)
const getAllSubcategoryProductsUsecaseProvider =
    GetAllSubcategoryProductsUsecaseProvider._();

final class GetAllSubcategoryProductsUsecaseProvider
    extends
        $FunctionalProvider<
          GetAllSubcategoryProductsUsecase,
          GetAllSubcategoryProductsUsecase,
          GetAllSubcategoryProductsUsecase
        >
    with $Provider<GetAllSubcategoryProductsUsecase> {
  const GetAllSubcategoryProductsUsecaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getAllSubcategoryProductsUsecaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getAllSubcategoryProductsUsecaseHash();

  @$internal
  @override
  $ProviderElement<GetAllSubcategoryProductsUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetAllSubcategoryProductsUsecase create(Ref ref) {
    return getAllSubcategoryProductsUsecase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetAllSubcategoryProductsUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetAllSubcategoryProductsUsecase>(
        value,
      ),
    );
  }
}

String _$getAllSubcategoryProductsUsecaseHash() =>
    r'b704aee7a254e20be177a681c21fc5988fc279c0';

@ProviderFor(branchProducts)
const branchProductsProvider = BranchProductsFamily._();

final class BranchProductsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Product>>,
          List<Product>,
          FutureOr<List<Product>>
        >
    with $FutureModifier<List<Product>>, $FutureProvider<List<Product>> {
  const BranchProductsProvider._({
    required BranchProductsFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'branchProductsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$branchProductsHash();

  @override
  String toString() {
    return r'branchProductsProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<Product>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Product>> create(Ref ref) {
    final argument = this.argument as int;
    return branchProducts(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is BranchProductsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$branchProductsHash() => r'2f1e783b469c80f0e02d50a25102f61a2a621cb0';

final class BranchProductsFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<Product>>, int> {
  const BranchProductsFamily._()
    : super(
        retry: null,
        name: r'branchProductsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  BranchProductsProvider call(int branchId) =>
      BranchProductsProvider._(argument: branchId, from: this);

  @override
  String toString() => r'branchProductsProvider';
}

@ProviderFor(categoryProducts)
const categoryProductsProvider = CategoryProductsFamily._();

final class CategoryProductsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Product>>,
          List<Product>,
          FutureOr<List<Product>>
        >
    with $FutureModifier<List<Product>>, $FutureProvider<List<Product>> {
  const CategoryProductsProvider._({
    required CategoryProductsFamily super.from,
    required (int, int) super.argument,
  }) : super(
         retry: null,
         name: r'categoryProductsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$categoryProductsHash();

  @override
  String toString() {
    return r'categoryProductsProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<List<Product>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Product>> create(Ref ref) {
    final argument = this.argument as (int, int);
    return categoryProducts(ref, argument.$1, argument.$2);
  }

  @override
  bool operator ==(Object other) {
    return other is CategoryProductsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$categoryProductsHash() => r'c655c0c79353ab11baae6e3b94ee711bbada381a';

final class CategoryProductsFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<Product>>, (int, int)> {
  const CategoryProductsFamily._()
    : super(
        retry: null,
        name: r'categoryProductsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  CategoryProductsProvider call(int branchId, int categoryId) =>
      CategoryProductsProvider._(argument: (branchId, categoryId), from: this);

  @override
  String toString() => r'categoryProductsProvider';
}

@ProviderFor(subcategoryProducts)
const subcategoryProductsProvider = SubcategoryProductsFamily._();

final class SubcategoryProductsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Product>>,
          List<Product>,
          FutureOr<List<Product>>
        >
    with $FutureModifier<List<Product>>, $FutureProvider<List<Product>> {
  const SubcategoryProductsProvider._({
    required SubcategoryProductsFamily super.from,
    required (int, int) super.argument,
  }) : super(
         retry: null,
         name: r'subcategoryProductsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$subcategoryProductsHash();

  @override
  String toString() {
    return r'subcategoryProductsProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<List<Product>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Product>> create(Ref ref) {
    final argument = this.argument as (int, int);
    return subcategoryProducts(ref, argument.$1, argument.$2);
  }

  @override
  bool operator ==(Object other) {
    return other is SubcategoryProductsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$subcategoryProductsHash() =>
    r'd38e0b3dcbb3aa3e19df774da9ab0013b9085ad4';

final class SubcategoryProductsFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<Product>>, (int, int)> {
  const SubcategoryProductsFamily._()
    : super(
        retry: null,
        name: r'subcategoryProductsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  SubcategoryProductsProvider call(int branchId, int subCategoryId) =>
      SubcategoryProductsProvider._(
        argument: (branchId, subCategoryId),
        from: this,
      );

  @override
  String toString() => r'subcategoryProductsProvider';
}

/// Provider that returns related products based on category and subcategory matching.
///
/// This provider filters products from the cached branch products (already loaded
/// from the home page) to find related products. It uses a priority-based filtering
/// system to return the most relevant products first.
///
/// **Filtering Priority (in order):**
/// 1. **Highest Priority**: Products matching both `categoryId` and `subCategoryId`
/// 2. **Second Priority**: Products matching only `subCategoryId`
/// 3. **Third Priority**: Products matching only `categoryId`
///
/// **Behavior:**
/// - Excludes the product with the provided `productId` from results
/// - Returns a maximum of 10 products
/// - Fills remaining slots with lower priority matches if highest priority has < 10 products
/// - Returns empty list if no products match any criteria or if branch products aren't loaded yet
///
/// **Performance:**
/// - Synchronous operation (uses cached data, no network calls)
/// - Single pass through products (O(n) time complexity)
/// - Minimal memory allocation (only creates small lists for categorization)
///
/// **Parameters:**
/// - [productId]: The ID of the product to exclude from results
/// - [branchId]: The branch ID to filter products from
/// - [categoryId]: The category ID to match against
/// - [subCategoryId]: The subcategory ID to match against
///
/// **Returns:**
/// A list of related products (max 10), prioritized by relevance.

@ProviderFor(relatedProducts)
const relatedProductsProvider = RelatedProductsFamily._();

/// Provider that returns related products based on category and subcategory matching.
///
/// This provider filters products from the cached branch products (already loaded
/// from the home page) to find related products. It uses a priority-based filtering
/// system to return the most relevant products first.
///
/// **Filtering Priority (in order):**
/// 1. **Highest Priority**: Products matching both `categoryId` and `subCategoryId`
/// 2. **Second Priority**: Products matching only `subCategoryId`
/// 3. **Third Priority**: Products matching only `categoryId`
///
/// **Behavior:**
/// - Excludes the product with the provided `productId` from results
/// - Returns a maximum of 10 products
/// - Fills remaining slots with lower priority matches if highest priority has < 10 products
/// - Returns empty list if no products match any criteria or if branch products aren't loaded yet
///
/// **Performance:**
/// - Synchronous operation (uses cached data, no network calls)
/// - Single pass through products (O(n) time complexity)
/// - Minimal memory allocation (only creates small lists for categorization)
///
/// **Parameters:**
/// - [productId]: The ID of the product to exclude from results
/// - [branchId]: The branch ID to filter products from
/// - [categoryId]: The category ID to match against
/// - [subCategoryId]: The subcategory ID to match against
///
/// **Returns:**
/// A list of related products (max 10), prioritized by relevance.

final class RelatedProductsProvider
    extends $FunctionalProvider<List<Product>, List<Product>, List<Product>>
    with $Provider<List<Product>> {
  /// Provider that returns related products based on category and subcategory matching.
  ///
  /// This provider filters products from the cached branch products (already loaded
  /// from the home page) to find related products. It uses a priority-based filtering
  /// system to return the most relevant products first.
  ///
  /// **Filtering Priority (in order):**
  /// 1. **Highest Priority**: Products matching both `categoryId` and `subCategoryId`
  /// 2. **Second Priority**: Products matching only `subCategoryId`
  /// 3. **Third Priority**: Products matching only `categoryId`
  ///
  /// **Behavior:**
  /// - Excludes the product with the provided `productId` from results
  /// - Returns a maximum of 10 products
  /// - Fills remaining slots with lower priority matches if highest priority has < 10 products
  /// - Returns empty list if no products match any criteria or if branch products aren't loaded yet
  ///
  /// **Performance:**
  /// - Synchronous operation (uses cached data, no network calls)
  /// - Single pass through products (O(n) time complexity)
  /// - Minimal memory allocation (only creates small lists for categorization)
  ///
  /// **Parameters:**
  /// - [productId]: The ID of the product to exclude from results
  /// - [branchId]: The branch ID to filter products from
  /// - [categoryId]: The category ID to match against
  /// - [subCategoryId]: The subcategory ID to match against
  ///
  /// **Returns:**
  /// A list of related products (max 10), prioritized by relevance.
  const RelatedProductsProvider._({
    required RelatedProductsFamily super.from,
    required (int, int, int, int) super.argument,
  }) : super(
         retry: null,
         name: r'relatedProductsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$relatedProductsHash();

  @override
  String toString() {
    return r'relatedProductsProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $ProviderElement<List<Product>> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  List<Product> create(Ref ref) {
    final argument = this.argument as (int, int, int, int);
    return relatedProducts(
      ref,
      argument.$1,
      argument.$2,
      argument.$3,
      argument.$4,
    );
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<Product> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<Product>>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is RelatedProductsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$relatedProductsHash() => r'9c5a64c5465da33c3a072265e52b0bc52a0b8860';

/// Provider that returns related products based on category and subcategory matching.
///
/// This provider filters products from the cached branch products (already loaded
/// from the home page) to find related products. It uses a priority-based filtering
/// system to return the most relevant products first.
///
/// **Filtering Priority (in order):**
/// 1. **Highest Priority**: Products matching both `categoryId` and `subCategoryId`
/// 2. **Second Priority**: Products matching only `subCategoryId`
/// 3. **Third Priority**: Products matching only `categoryId`
///
/// **Behavior:**
/// - Excludes the product with the provided `productId` from results
/// - Returns a maximum of 10 products
/// - Fills remaining slots with lower priority matches if highest priority has < 10 products
/// - Returns empty list if no products match any criteria or if branch products aren't loaded yet
///
/// **Performance:**
/// - Synchronous operation (uses cached data, no network calls)
/// - Single pass through products (O(n) time complexity)
/// - Minimal memory allocation (only creates small lists for categorization)
///
/// **Parameters:**
/// - [productId]: The ID of the product to exclude from results
/// - [branchId]: The branch ID to filter products from
/// - [categoryId]: The category ID to match against
/// - [subCategoryId]: The subcategory ID to match against
///
/// **Returns:**
/// A list of related products (max 10), prioritized by relevance.

final class RelatedProductsFamily extends $Family
    with $FunctionalFamilyOverride<List<Product>, (int, int, int, int)> {
  const RelatedProductsFamily._()
    : super(
        retry: null,
        name: r'relatedProductsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// Provider that returns related products based on category and subcategory matching.
  ///
  /// This provider filters products from the cached branch products (already loaded
  /// from the home page) to find related products. It uses a priority-based filtering
  /// system to return the most relevant products first.
  ///
  /// **Filtering Priority (in order):**
  /// 1. **Highest Priority**: Products matching both `categoryId` and `subCategoryId`
  /// 2. **Second Priority**: Products matching only `subCategoryId`
  /// 3. **Third Priority**: Products matching only `categoryId`
  ///
  /// **Behavior:**
  /// - Excludes the product with the provided `productId` from results
  /// - Returns a maximum of 10 products
  /// - Fills remaining slots with lower priority matches if highest priority has < 10 products
  /// - Returns empty list if no products match any criteria or if branch products aren't loaded yet
  ///
  /// **Performance:**
  /// - Synchronous operation (uses cached data, no network calls)
  /// - Single pass through products (O(n) time complexity)
  /// - Minimal memory allocation (only creates small lists for categorization)
  ///
  /// **Parameters:**
  /// - [productId]: The ID of the product to exclude from results
  /// - [branchId]: The branch ID to filter products from
  /// - [categoryId]: The category ID to match against
  /// - [subCategoryId]: The subcategory ID to match against
  ///
  /// **Returns:**
  /// A list of related products (max 10), prioritized by relevance.

  RelatedProductsProvider call(
    int productId,
    int branchId,
    int categoryId,
    int subCategoryId,
  ) => RelatedProductsProvider._(
    argument: (productId, branchId, categoryId, subCategoryId),
    from: this,
  );

  @override
  String toString() => r'relatedProductsProvider';
}

/// Provider that returns the cart item for a specific product.
///
/// This provider checks if a product is in the cart and returns the
/// corresponding [Cart] item if found, or `null` if the product is not in cart.
///
/// **Behavior:**
/// - Uses cached cart data (no additional network calls)
/// - Returns `null` if cart is not loaded yet or product is not in cart
/// - Synchronous operation (O(n) time complexity where n is cart size)
///
/// **Parameters:**
/// - [product]: The [Product] entity to find in cart
///
/// **Returns:**
/// The [Cart] item if product is in cart, `null` otherwise.
///
/// **Usage:**
/// ```dart
/// final cartItem = ref.watch(productCartItemProvider(product));
/// ```

@ProviderFor(productCartItem)
const productCartItemProvider = ProductCartItemFamily._();

/// Provider that returns the cart item for a specific product.
///
/// This provider checks if a product is in the cart and returns the
/// corresponding [Cart] item if found, or `null` if the product is not in cart.
///
/// **Behavior:**
/// - Uses cached cart data (no additional network calls)
/// - Returns `null` if cart is not loaded yet or product is not in cart
/// - Synchronous operation (O(n) time complexity where n is cart size)
///
/// **Parameters:**
/// - [product]: The [Product] entity to find in cart
///
/// **Returns:**
/// The [Cart] item if product is in cart, `null` otherwise.
///
/// **Usage:**
/// ```dart
/// final cartItem = ref.watch(productCartItemProvider(product));
/// ```

final class ProductCartItemProvider
    extends $FunctionalProvider<Cart?, Cart?, Cart?>
    with $Provider<Cart?> {
  /// Provider that returns the cart item for a specific product.
  ///
  /// This provider checks if a product is in the cart and returns the
  /// corresponding [Cart] item if found, or `null` if the product is not in cart.
  ///
  /// **Behavior:**
  /// - Uses cached cart data (no additional network calls)
  /// - Returns `null` if cart is not loaded yet or product is not in cart
  /// - Synchronous operation (O(n) time complexity where n is cart size)
  ///
  /// **Parameters:**
  /// - [product]: The [Product] entity to find in cart
  ///
  /// **Returns:**
  /// The [Cart] item if product is in cart, `null` otherwise.
  ///
  /// **Usage:**
  /// ```dart
  /// final cartItem = ref.watch(productCartItemProvider(product));
  /// ```
  const ProductCartItemProvider._({
    required ProductCartItemFamily super.from,
    required Product super.argument,
  }) : super(
         retry: null,
         name: r'productCartItemProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$productCartItemHash();

  @override
  String toString() {
    return r'productCartItemProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $ProviderElement<Cart?> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  Cart? create(Ref ref) {
    final argument = this.argument as Product;
    return productCartItem(ref, argument);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Cart? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Cart?>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is ProductCartItemProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$productCartItemHash() => r'066cf244b08ba66037ed3a8a602a808f378450dd';

/// Provider that returns the cart item for a specific product.
///
/// This provider checks if a product is in the cart and returns the
/// corresponding [Cart] item if found, or `null` if the product is not in cart.
///
/// **Behavior:**
/// - Uses cached cart data (no additional network calls)
/// - Returns `null` if cart is not loaded yet or product is not in cart
/// - Synchronous operation (O(n) time complexity where n is cart size)
///
/// **Parameters:**
/// - [product]: The [Product] entity to find in cart
///
/// **Returns:**
/// The [Cart] item if product is in cart, `null` otherwise.
///
/// **Usage:**
/// ```dart
/// final cartItem = ref.watch(productCartItemProvider(product));
/// ```

final class ProductCartItemFamily extends $Family
    with $FunctionalFamilyOverride<Cart?, Product> {
  const ProductCartItemFamily._()
    : super(
        retry: null,
        name: r'productCartItemProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// Provider that returns the cart item for a specific product.
  ///
  /// This provider checks if a product is in the cart and returns the
  /// corresponding [Cart] item if found, or `null` if the product is not in cart.
  ///
  /// **Behavior:**
  /// - Uses cached cart data (no additional network calls)
  /// - Returns `null` if cart is not loaded yet or product is not in cart
  /// - Synchronous operation (O(n) time complexity where n is cart size)
  ///
  /// **Parameters:**
  /// - [product]: The [Product] entity to find in cart
  ///
  /// **Returns:**
  /// The [Cart] item if product is in cart, `null` otherwise.
  ///
  /// **Usage:**
  /// ```dart
  /// final cartItem = ref.watch(productCartItemProvider(product));
  /// ```

  ProductCartItemProvider call(Product product) =>
      ProductCartItemProvider._(argument: product, from: this);

  @override
  String toString() => r'productCartItemProvider';
}

/// Provider that checks if a product is in the cart.
///
/// This provider returns a boolean indicating whether a specific product
/// is currently in the user's cart for a given branch.
///
/// **Behavior:**
/// - Uses cached cart data (no additional network calls)
/// - Returns `false` if cart is not loaded yet
/// - Synchronous operation (O(n) time complexity where n is cart size)
///
/// **Parameters:**
/// - [product]: The [Product] entity to check
///
/// **Returns:**
/// `true` if product is in cart, `false` otherwise.
///
/// **Usage:**
/// ```dart
/// final isInCart = ref.watch(isProductInCartProvider(product));
/// ```

@ProviderFor(isProductInCart)
const isProductInCartProvider = IsProductInCartFamily._();

/// Provider that checks if a product is in the cart.
///
/// This provider returns a boolean indicating whether a specific product
/// is currently in the user's cart for a given branch.
///
/// **Behavior:**
/// - Uses cached cart data (no additional network calls)
/// - Returns `false` if cart is not loaded yet
/// - Synchronous operation (O(n) time complexity where n is cart size)
///
/// **Parameters:**
/// - [product]: The [Product] entity to check
///
/// **Returns:**
/// `true` if product is in cart, `false` otherwise.
///
/// **Usage:**
/// ```dart
/// final isInCart = ref.watch(isProductInCartProvider(product));
/// ```

final class IsProductInCartProvider
    extends $FunctionalProvider<bool, bool, bool>
    with $Provider<bool> {
  /// Provider that checks if a product is in the cart.
  ///
  /// This provider returns a boolean indicating whether a specific product
  /// is currently in the user's cart for a given branch.
  ///
  /// **Behavior:**
  /// - Uses cached cart data (no additional network calls)
  /// - Returns `false` if cart is not loaded yet
  /// - Synchronous operation (O(n) time complexity where n is cart size)
  ///
  /// **Parameters:**
  /// - [product]: The [Product] entity to check
  ///
  /// **Returns:**
  /// `true` if product is in cart, `false` otherwise.
  ///
  /// **Usage:**
  /// ```dart
  /// final isInCart = ref.watch(isProductInCartProvider(product));
  /// ```
  const IsProductInCartProvider._({
    required IsProductInCartFamily super.from,
    required Product super.argument,
  }) : super(
         retry: null,
         name: r'isProductInCartProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$isProductInCartHash();

  @override
  String toString() {
    return r'isProductInCartProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $ProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  bool create(Ref ref) {
    final argument = this.argument as Product;
    return isProductInCart(ref, argument);
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
    return other is IsProductInCartProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$isProductInCartHash() => r'd2cf952ce7aa412606a77ec11407a445f4fdf197';

/// Provider that checks if a product is in the cart.
///
/// This provider returns a boolean indicating whether a specific product
/// is currently in the user's cart for a given branch.
///
/// **Behavior:**
/// - Uses cached cart data (no additional network calls)
/// - Returns `false` if cart is not loaded yet
/// - Synchronous operation (O(n) time complexity where n is cart size)
///
/// **Parameters:**
/// - [product]: The [Product] entity to check
///
/// **Returns:**
/// `true` if product is in cart, `false` otherwise.
///
/// **Usage:**
/// ```dart
/// final isInCart = ref.watch(isProductInCartProvider(product));
/// ```

final class IsProductInCartFamily extends $Family
    with $FunctionalFamilyOverride<bool, Product> {
  const IsProductInCartFamily._()
    : super(
        retry: null,
        name: r'isProductInCartProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// Provider that checks if a product is in the cart.
  ///
  /// This provider returns a boolean indicating whether a specific product
  /// is currently in the user's cart for a given branch.
  ///
  /// **Behavior:**
  /// - Uses cached cart data (no additional network calls)
  /// - Returns `false` if cart is not loaded yet
  /// - Synchronous operation (O(n) time complexity where n is cart size)
  ///
  /// **Parameters:**
  /// - [product]: The [Product] entity to check
  ///
  /// **Returns:**
  /// `true` if product is in cart, `false` otherwise.
  ///
  /// **Usage:**
  /// ```dart
  /// final isInCart = ref.watch(isProductInCartProvider(product));
  /// ```

  IsProductInCartProvider call(Product product) =>
      IsProductInCartProvider._(argument: product, from: this);

  @override
  String toString() => r'isProductInCartProvider';
}
