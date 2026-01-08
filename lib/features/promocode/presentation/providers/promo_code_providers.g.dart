// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promo_code_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Promo code API service provider
///
/// Uses dioClientProvider (with auth interceptor) because all promo code endpoints
/// require authentication.

@ProviderFor(promoCodeApiService)
const promoCodeApiServiceProvider = PromoCodeApiServiceProvider._();

/// Promo code API service provider
///
/// Uses dioClientProvider (with auth interceptor) because all promo code endpoints
/// require authentication.

final class PromoCodeApiServiceProvider
    extends
        $FunctionalProvider<
          AsyncValue<PromoCodeApiService>,
          PromoCodeApiService,
          FutureOr<PromoCodeApiService>
        >
    with
        $FutureModifier<PromoCodeApiService>,
        $FutureProvider<PromoCodeApiService> {
  /// Promo code API service provider
  ///
  /// Uses dioClientProvider (with auth interceptor) because all promo code endpoints
  /// require authentication.
  const PromoCodeApiServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'promoCodeApiServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$promoCodeApiServiceHash();

  @$internal
  @override
  $FutureProviderElement<PromoCodeApiService> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<PromoCodeApiService> create(Ref ref) {
    return promoCodeApiService(ref);
  }
}

String _$promoCodeApiServiceHash() =>
    r'93eacfded1f6b92a2f70a038d1ff946788d4cebc';

@ProviderFor(promoCodeRemoteDataSource)
const promoCodeRemoteDataSourceProvider = PromoCodeRemoteDataSourceProvider._();

final class PromoCodeRemoteDataSourceProvider
    extends
        $FunctionalProvider<
          AsyncValue<PromoCodeRemoteDataSource>,
          PromoCodeRemoteDataSource,
          FutureOr<PromoCodeRemoteDataSource>
        >
    with
        $FutureModifier<PromoCodeRemoteDataSource>,
        $FutureProvider<PromoCodeRemoteDataSource> {
  const PromoCodeRemoteDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'promoCodeRemoteDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$promoCodeRemoteDataSourceHash();

  @$internal
  @override
  $FutureProviderElement<PromoCodeRemoteDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<PromoCodeRemoteDataSource> create(Ref ref) {
    return promoCodeRemoteDataSource(ref);
  }
}

String _$promoCodeRemoteDataSourceHash() =>
    r'f4de7bfff7be4470c2924a8313f3e91680e2e590';

@ProviderFor(promoCodeRepository)
const promoCodeRepositoryProvider = PromoCodeRepositoryProvider._();

final class PromoCodeRepositoryProvider
    extends
        $FunctionalProvider<
          AsyncValue<PromoCodeRepository>,
          PromoCodeRepository,
          FutureOr<PromoCodeRepository>
        >
    with
        $FutureModifier<PromoCodeRepository>,
        $FutureProvider<PromoCodeRepository> {
  const PromoCodeRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'promoCodeRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$promoCodeRepositoryHash();

  @$internal
  @override
  $FutureProviderElement<PromoCodeRepository> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<PromoCodeRepository> create(Ref ref) {
    return promoCodeRepository(ref);
  }
}

String _$promoCodeRepositoryHash() =>
    r'ed8d79957062e11e95a8005035e398fb2c6dd481';

@ProviderFor(verifyPromoCodeUseCase)
const verifyPromoCodeUseCaseProvider = VerifyPromoCodeUseCaseProvider._();

final class VerifyPromoCodeUseCaseProvider
    extends
        $FunctionalProvider<
          AsyncValue<VerifyPromoCodeUsecase>,
          VerifyPromoCodeUsecase,
          FutureOr<VerifyPromoCodeUsecase>
        >
    with
        $FutureModifier<VerifyPromoCodeUsecase>,
        $FutureProvider<VerifyPromoCodeUsecase> {
  const VerifyPromoCodeUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'verifyPromoCodeUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$verifyPromoCodeUseCaseHash();

  @$internal
  @override
  $FutureProviderElement<VerifyPromoCodeUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<VerifyPromoCodeUsecase> create(Ref ref) {
    return verifyPromoCodeUseCase(ref);
  }
}

String _$verifyPromoCodeUseCaseHash() =>
    r'73195b9ea3f5724b3d981e385f32dbb0504c51f0';

@ProviderFor(getPromoCodesUseCase)
const getPromoCodesUseCaseProvider = GetPromoCodesUseCaseProvider._();

final class GetPromoCodesUseCaseProvider
    extends
        $FunctionalProvider<
          AsyncValue<GetPromoCodesUsecase>,
          GetPromoCodesUsecase,
          FutureOr<GetPromoCodesUsecase>
        >
    with
        $FutureModifier<GetPromoCodesUsecase>,
        $FutureProvider<GetPromoCodesUsecase> {
  const GetPromoCodesUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getPromoCodesUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getPromoCodesUseCaseHash();

  @$internal
  @override
  $FutureProviderElement<GetPromoCodesUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<GetPromoCodesUsecase> create(Ref ref) {
    return getPromoCodesUseCase(ref);
  }
}

String _$getPromoCodesUseCaseHash() =>
    r'e23244378e54770c883aee1a32c2976b7ca3fadc';

/// FutureProvider for getting all promo codes.

@ProviderFor(promoCodeList)
const promoCodeListProvider = PromoCodeListProvider._();

/// FutureProvider for getting all promo codes.

final class PromoCodeListProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<PromoCode>>,
          List<PromoCode>,
          FutureOr<List<PromoCode>>
        >
    with $FutureModifier<List<PromoCode>>, $FutureProvider<List<PromoCode>> {
  /// FutureProvider for getting all promo codes.
  const PromoCodeListProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'promoCodeListProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$promoCodeListHash();

  @$internal
  @override
  $FutureProviderElement<List<PromoCode>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<PromoCode>> create(Ref ref) {
    return promoCodeList(ref);
  }
}

String _$promoCodeListHash() => r'ccfd0e2fea833d55a5ea0c3f68e533167313507d';
