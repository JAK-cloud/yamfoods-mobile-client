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
