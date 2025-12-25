// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promo_banner_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Promo banner API service provider
///
/// Provides Retrofit API service for promo banner endpoints.
/// Uses baseDioClientProvider since this is an unprotected route.

@ProviderFor(promoBannerApiService)
const promoBannerApiServiceProvider = PromoBannerApiServiceProvider._();

/// Promo banner API service provider
///
/// Provides Retrofit API service for promo banner endpoints.
/// Uses baseDioClientProvider since this is an unprotected route.

final class PromoBannerApiServiceProvider
    extends
        $FunctionalProvider<
          PromoBannerApiService,
          PromoBannerApiService,
          PromoBannerApiService
        >
    with $Provider<PromoBannerApiService> {
  /// Promo banner API service provider
  ///
  /// Provides Retrofit API service for promo banner endpoints.
  /// Uses baseDioClientProvider since this is an unprotected route.
  const PromoBannerApiServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'promoBannerApiServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$promoBannerApiServiceHash();

  @$internal
  @override
  $ProviderElement<PromoBannerApiService> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  PromoBannerApiService create(Ref ref) {
    return promoBannerApiService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PromoBannerApiService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PromoBannerApiService>(value),
    );
  }
}

String _$promoBannerApiServiceHash() =>
    r'c685d26552137368a6b0474658835143c2ee88be';

/// Promo banner remote data source provider
///
/// Provides implementation for fetching promo banner data from backend.

@ProviderFor(promoBannerRemoteDataSource)
const promoBannerRemoteDataSourceProvider =
    PromoBannerRemoteDataSourceProvider._();

/// Promo banner remote data source provider
///
/// Provides implementation for fetching promo banner data from backend.

final class PromoBannerRemoteDataSourceProvider
    extends
        $FunctionalProvider<
          PromoBannerRemoteDataSource,
          PromoBannerRemoteDataSource,
          PromoBannerRemoteDataSource
        >
    with $Provider<PromoBannerRemoteDataSource> {
  /// Promo banner remote data source provider
  ///
  /// Provides implementation for fetching promo banner data from backend.
  const PromoBannerRemoteDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'promoBannerRemoteDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$promoBannerRemoteDataSourceHash();

  @$internal
  @override
  $ProviderElement<PromoBannerRemoteDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  PromoBannerRemoteDataSource create(Ref ref) {
    return promoBannerRemoteDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PromoBannerRemoteDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PromoBannerRemoteDataSource>(value),
    );
  }
}

String _$promoBannerRemoteDataSourceHash() =>
    r'5ce247148973b43e1284582e466e998017c2dc09';

/// Promo banner repository provider
///
/// Provides the main repository for promo banner operations.

@ProviderFor(promoBannerRepository)
const promoBannerRepositoryProvider = PromoBannerRepositoryProvider._();

/// Promo banner repository provider
///
/// Provides the main repository for promo banner operations.

final class PromoBannerRepositoryProvider
    extends
        $FunctionalProvider<
          PromoBannerRepository,
          PromoBannerRepository,
          PromoBannerRepository
        >
    with $Provider<PromoBannerRepository> {
  /// Promo banner repository provider
  ///
  /// Provides the main repository for promo banner operations.
  const PromoBannerRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'promoBannerRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$promoBannerRepositoryHash();

  @$internal
  @override
  $ProviderElement<PromoBannerRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  PromoBannerRepository create(Ref ref) {
    return promoBannerRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PromoBannerRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PromoBannerRepository>(value),
    );
  }
}

String _$promoBannerRepositoryHash() =>
    r'dd3c5dd05963a6d43128fdaa520f5ef4b3a001c0';

/// Get active promo banners usecase provider
///
/// Provides usecase for fetching all active promo banners.

@ProviderFor(getActivePromoBannersUsecase)
const getActivePromoBannersUsecaseProvider =
    GetActivePromoBannersUsecaseProvider._();

/// Get active promo banners usecase provider
///
/// Provides usecase for fetching all active promo banners.

final class GetActivePromoBannersUsecaseProvider
    extends
        $FunctionalProvider<
          GetActivePromoBannersUsecase,
          GetActivePromoBannersUsecase,
          GetActivePromoBannersUsecase
        >
    with $Provider<GetActivePromoBannersUsecase> {
  /// Get active promo banners usecase provider
  ///
  /// Provides usecase for fetching all active promo banners.
  const GetActivePromoBannersUsecaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getActivePromoBannersUsecaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getActivePromoBannersUsecaseHash();

  @$internal
  @override
  $ProviderElement<GetActivePromoBannersUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetActivePromoBannersUsecase create(Ref ref) {
    return getActivePromoBannersUsecase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetActivePromoBannersUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetActivePromoBannersUsecase>(value),
    );
  }
}

String _$getActivePromoBannersUsecaseHash() =>
    r'ac23f0a8c55e7540a3cd97832b805362440d9821';

/// Active promo banners list provider
///
/// Fetches all active promo banners using the usecase.
/// Returns [AsyncValue<List<PromoBanner>>] which handles loading, error, and data states.
/// This provider automatically handles caching (returns cached data immediately,
/// refreshes in background).

@ProviderFor(activePromoBanners)
const activePromoBannersProvider = ActivePromoBannersProvider._();

/// Active promo banners list provider
///
/// Fetches all active promo banners using the usecase.
/// Returns [AsyncValue<List<PromoBanner>>] which handles loading, error, and data states.
/// This provider automatically handles caching (returns cached data immediately,
/// refreshes in background).

final class ActivePromoBannersProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<PromoBanner>>,
          List<PromoBanner>,
          FutureOr<List<PromoBanner>>
        >
    with
        $FutureModifier<List<PromoBanner>>,
        $FutureProvider<List<PromoBanner>> {
  /// Active promo banners list provider
  ///
  /// Fetches all active promo banners using the usecase.
  /// Returns [AsyncValue<List<PromoBanner>>] which handles loading, error, and data states.
  /// This provider automatically handles caching (returns cached data immediately,
  /// refreshes in background).
  const ActivePromoBannersProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'activePromoBannersProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$activePromoBannersHash();

  @$internal
  @override
  $FutureProviderElement<List<PromoBanner>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<PromoBanner>> create(Ref ref) {
    return activePromoBanners(ref);
  }
}

String _$activePromoBannersHash() =>
    r'f6bb641910025f57d84743b4da506582e5344aeb';
