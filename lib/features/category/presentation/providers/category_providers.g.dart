// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(categoryApiService)
const categoryApiServiceProvider = CategoryApiServiceProvider._();

final class CategoryApiServiceProvider
    extends
        $FunctionalProvider<
          CategoryApiService,
          CategoryApiService,
          CategoryApiService
        >
    with $Provider<CategoryApiService> {
  const CategoryApiServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'categoryApiServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$categoryApiServiceHash();

  @$internal
  @override
  $ProviderElement<CategoryApiService> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  CategoryApiService create(Ref ref) {
    return categoryApiService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CategoryApiService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CategoryApiService>(value),
    );
  }
}

String _$categoryApiServiceHash() =>
    r'32025282977ca83e308843531e25da814dbcb649';

@ProviderFor(categoryRemoteDataSource)
const categoryRemoteDataSourceProvider = CategoryRemoteDataSourceProvider._();

final class CategoryRemoteDataSourceProvider
    extends
        $FunctionalProvider<
          CategoryRemoteDataSource,
          CategoryRemoteDataSource,
          CategoryRemoteDataSource
        >
    with $Provider<CategoryRemoteDataSource> {
  const CategoryRemoteDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'categoryRemoteDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$categoryRemoteDataSourceHash();

  @$internal
  @override
  $ProviderElement<CategoryRemoteDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  CategoryRemoteDataSource create(Ref ref) {
    return categoryRemoteDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CategoryRemoteDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CategoryRemoteDataSource>(value),
    );
  }
}

String _$categoryRemoteDataSourceHash() =>
    r'6b1b8bbe15301b90c205d31fdb2f87ba39e0e176';

@ProviderFor(categoryRepository)
const categoryRepositoryProvider = CategoryRepositoryProvider._();

final class CategoryRepositoryProvider
    extends
        $FunctionalProvider<
          CategoryRepository,
          CategoryRepository,
          CategoryRepository
        >
    with $Provider<CategoryRepository> {
  const CategoryRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'categoryRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$categoryRepositoryHash();

  @$internal
  @override
  $ProviderElement<CategoryRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  CategoryRepository create(Ref ref) {
    return categoryRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CategoryRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CategoryRepository>(value),
    );
  }
}

String _$categoryRepositoryHash() =>
    r'bda5970f80c8e4069ee2c4f02cc40f19f604af74';

@ProviderFor(getAllCategoriesUsecase)
const getAllCategoriesUsecaseProvider = GetAllCategoriesUsecaseProvider._();

final class GetAllCategoriesUsecaseProvider
    extends
        $FunctionalProvider<
          GetAllCategoriesUsecase,
          GetAllCategoriesUsecase,
          GetAllCategoriesUsecase
        >
    with $Provider<GetAllCategoriesUsecase> {
  const GetAllCategoriesUsecaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getAllCategoriesUsecaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getAllCategoriesUsecaseHash();

  @$internal
  @override
  $ProviderElement<GetAllCategoriesUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetAllCategoriesUsecase create(Ref ref) {
    return getAllCategoriesUsecase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetAllCategoriesUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetAllCategoriesUsecase>(value),
    );
  }
}

String _$getAllCategoriesUsecaseHash() =>
    r'f8a7d9b20bfd3c01ce6a9fb4f71660579df9d7fc';

@ProviderFor(categories)
const categoriesProvider = CategoriesFamily._();

final class CategoriesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Category>>,
          List<Category>,
          FutureOr<List<Category>>
        >
    with $FutureModifier<List<Category>>, $FutureProvider<List<Category>> {
  const CategoriesProvider._({
    required CategoriesFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'categoriesProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$categoriesHash();

  @override
  String toString() {
    return r'categoriesProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<Category>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Category>> create(Ref ref) {
    final argument = this.argument as int;
    return categories(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is CategoriesProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$categoriesHash() => r'aa1680a3483645261027a5ad3155cb490361b9a5';

final class CategoriesFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<Category>>, int> {
  const CategoriesFamily._()
    : super(
        retry: null,
        name: r'categoriesProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  CategoriesProvider call(int branchId) =>
      CategoriesProvider._(argument: branchId, from: this);

  @override
  String toString() => r'categoriesProvider';
}
