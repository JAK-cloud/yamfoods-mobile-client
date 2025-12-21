// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subcategory_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(subcategoryApiService)
const subcategoryApiServiceProvider = SubcategoryApiServiceProvider._();

final class SubcategoryApiServiceProvider
    extends
        $FunctionalProvider<
          SubcategoryApiService,
          SubcategoryApiService,
          SubcategoryApiService
        >
    with $Provider<SubcategoryApiService> {
  const SubcategoryApiServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'subcategoryApiServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$subcategoryApiServiceHash();

  @$internal
  @override
  $ProviderElement<SubcategoryApiService> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  SubcategoryApiService create(Ref ref) {
    return subcategoryApiService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SubcategoryApiService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SubcategoryApiService>(value),
    );
  }
}

String _$subcategoryApiServiceHash() =>
    r'87250900b4e60752f25d0beb69a282ed5571e10c';

@ProviderFor(subcategoryRemoteDataSource)
const subcategoryRemoteDataSourceProvider =
    SubcategoryRemoteDataSourceProvider._();

final class SubcategoryRemoteDataSourceProvider
    extends
        $FunctionalProvider<
          SubcategoryRemoteDataSource,
          SubcategoryRemoteDataSource,
          SubcategoryRemoteDataSource
        >
    with $Provider<SubcategoryRemoteDataSource> {
  const SubcategoryRemoteDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'subcategoryRemoteDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$subcategoryRemoteDataSourceHash();

  @$internal
  @override
  $ProviderElement<SubcategoryRemoteDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  SubcategoryRemoteDataSource create(Ref ref) {
    return subcategoryRemoteDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SubcategoryRemoteDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SubcategoryRemoteDataSource>(value),
    );
  }
}

String _$subcategoryRemoteDataSourceHash() =>
    r'7fb0657df6d9c9586fce20d0aa914a88b6f68b50';

@ProviderFor(subcategoryRepository)
const subcategoryRepositoryProvider = SubcategoryRepositoryProvider._();

final class SubcategoryRepositoryProvider
    extends
        $FunctionalProvider<
          SubcategoryRepository,
          SubcategoryRepository,
          SubcategoryRepository
        >
    with $Provider<SubcategoryRepository> {
  const SubcategoryRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'subcategoryRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$subcategoryRepositoryHash();

  @$internal
  @override
  $ProviderElement<SubcategoryRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  SubcategoryRepository create(Ref ref) {
    return subcategoryRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SubcategoryRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SubcategoryRepository>(value),
    );
  }
}

String _$subcategoryRepositoryHash() =>
    r'6aeeb69e75790c715b2e6a192e177e7069cae29e';

@ProviderFor(getAllSubcategoriesUsecase)
const getAllSubcategoriesUsecaseProvider =
    GetAllSubcategoriesUsecaseProvider._();

final class GetAllSubcategoriesUsecaseProvider
    extends
        $FunctionalProvider<
          GetAllSubcategoriesUsecase,
          GetAllSubcategoriesUsecase,
          GetAllSubcategoriesUsecase
        >
    with $Provider<GetAllSubcategoriesUsecase> {
  const GetAllSubcategoriesUsecaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getAllSubcategoriesUsecaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getAllSubcategoriesUsecaseHash();

  @$internal
  @override
  $ProviderElement<GetAllSubcategoriesUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetAllSubcategoriesUsecase create(Ref ref) {
    return getAllSubcategoriesUsecase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetAllSubcategoriesUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetAllSubcategoriesUsecase>(value),
    );
  }
}

String _$getAllSubcategoriesUsecaseHash() =>
    r'37ea805a55c7d487c20c806a9bb4ceef8bc3dc01';

@ProviderFor(subcategories)
const subcategoriesProvider = SubcategoriesFamily._();

final class SubcategoriesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Subcategory>>,
          List<Subcategory>,
          FutureOr<List<Subcategory>>
        >
    with
        $FutureModifier<List<Subcategory>>,
        $FutureProvider<List<Subcategory>> {
  const SubcategoriesProvider._({
    required SubcategoriesFamily super.from,
    required (int, int) super.argument,
  }) : super(
         retry: null,
         name: r'subcategoriesProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$subcategoriesHash();

  @override
  String toString() {
    return r'subcategoriesProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<List<Subcategory>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Subcategory>> create(Ref ref) {
    final argument = this.argument as (int, int);
    return subcategories(ref, argument.$1, argument.$2);
  }

  @override
  bool operator ==(Object other) {
    return other is SubcategoriesProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$subcategoriesHash() => r'39f8852e2c72ebb2a6c11ff88cf9f354cf4161fe';

final class SubcategoriesFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<Subcategory>>, (int, int)> {
  const SubcategoriesFamily._()
    : super(
        retry: null,
        name: r'subcategoriesProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  SubcategoriesProvider call(int branchId, int categoryId) =>
      SubcategoriesProvider._(argument: (branchId, categoryId), from: this);

  @override
  String toString() => r'subcategoriesProvider';
}
