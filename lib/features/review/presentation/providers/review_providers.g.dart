// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Review API service provider
///
/// Uses dioClientProvider (with auth interceptor) to support both:
/// - Unprotected route: getAllReviews (guests can view reviews)
/// - Protected routes: create, update, delete (require authentication)
///
/// The AuthInterceptor automatically skips adding auth headers for unprotected
/// endpoints (like getAllReviews) and adds them for protected endpoints.

@ProviderFor(reviewApiService)
const reviewApiServiceProvider = ReviewApiServiceProvider._();

/// Review API service provider
///
/// Uses dioClientProvider (with auth interceptor) to support both:
/// - Unprotected route: getAllReviews (guests can view reviews)
/// - Protected routes: create, update, delete (require authentication)
///
/// The AuthInterceptor automatically skips adding auth headers for unprotected
/// endpoints (like getAllReviews) and adds them for protected endpoints.

final class ReviewApiServiceProvider
    extends
        $FunctionalProvider<
          AsyncValue<ReviewApiService>,
          ReviewApiService,
          FutureOr<ReviewApiService>
        >
    with $FutureModifier<ReviewApiService>, $FutureProvider<ReviewApiService> {
  /// Review API service provider
  ///
  /// Uses dioClientProvider (with auth interceptor) to support both:
  /// - Unprotected route: getAllReviews (guests can view reviews)
  /// - Protected routes: create, update, delete (require authentication)
  ///
  /// The AuthInterceptor automatically skips adding auth headers for unprotected
  /// endpoints (like getAllReviews) and adds them for protected endpoints.
  const ReviewApiServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'reviewApiServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$reviewApiServiceHash();

  @$internal
  @override
  $FutureProviderElement<ReviewApiService> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<ReviewApiService> create(Ref ref) {
    return reviewApiService(ref);
  }
}

String _$reviewApiServiceHash() => r'41cc7621c796c38daf44bdce16965e66a6fc3ed0';

@ProviderFor(reviewRemoteDataSource)
const reviewRemoteDataSourceProvider = ReviewRemoteDataSourceProvider._();

final class ReviewRemoteDataSourceProvider
    extends
        $FunctionalProvider<
          AsyncValue<ReviewRemoteDataSource>,
          ReviewRemoteDataSource,
          FutureOr<ReviewRemoteDataSource>
        >
    with
        $FutureModifier<ReviewRemoteDataSource>,
        $FutureProvider<ReviewRemoteDataSource> {
  const ReviewRemoteDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'reviewRemoteDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$reviewRemoteDataSourceHash();

  @$internal
  @override
  $FutureProviderElement<ReviewRemoteDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<ReviewRemoteDataSource> create(Ref ref) {
    return reviewRemoteDataSource(ref);
  }
}

String _$reviewRemoteDataSourceHash() =>
    r'f1d715a85bc1d2fbdff832c783c1c2a3273171ff';

@ProviderFor(reviewRepository)
const reviewRepositoryProvider = ReviewRepositoryProvider._();

final class ReviewRepositoryProvider
    extends
        $FunctionalProvider<
          AsyncValue<ReviewRepository>,
          ReviewRepository,
          FutureOr<ReviewRepository>
        >
    with $FutureModifier<ReviewRepository>, $FutureProvider<ReviewRepository> {
  const ReviewRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'reviewRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$reviewRepositoryHash();

  @$internal
  @override
  $FutureProviderElement<ReviewRepository> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<ReviewRepository> create(Ref ref) {
    return reviewRepository(ref);
  }
}

String _$reviewRepositoryHash() => r'2e1f44f230beb85b3a78fbecf2b47a0d7dd091ea';

@ProviderFor(getAllReviewsUseCase)
const getAllReviewsUseCaseProvider = GetAllReviewsUseCaseProvider._();

final class GetAllReviewsUseCaseProvider
    extends
        $FunctionalProvider<
          AsyncValue<GetAllReviewsUsecase>,
          GetAllReviewsUsecase,
          FutureOr<GetAllReviewsUsecase>
        >
    with
        $FutureModifier<GetAllReviewsUsecase>,
        $FutureProvider<GetAllReviewsUsecase> {
  const GetAllReviewsUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getAllReviewsUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getAllReviewsUseCaseHash();

  @$internal
  @override
  $FutureProviderElement<GetAllReviewsUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<GetAllReviewsUsecase> create(Ref ref) {
    return getAllReviewsUseCase(ref);
  }
}

String _$getAllReviewsUseCaseHash() =>
    r'2f72cf5c482c4ca04ce0a8d0a0998b79f3275028';

@ProviderFor(createReviewUseCase)
const createReviewUseCaseProvider = CreateReviewUseCaseProvider._();

final class CreateReviewUseCaseProvider
    extends
        $FunctionalProvider<
          AsyncValue<CreateReviewUsecase>,
          CreateReviewUsecase,
          FutureOr<CreateReviewUsecase>
        >
    with
        $FutureModifier<CreateReviewUsecase>,
        $FutureProvider<CreateReviewUsecase> {
  const CreateReviewUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'createReviewUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$createReviewUseCaseHash();

  @$internal
  @override
  $FutureProviderElement<CreateReviewUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<CreateReviewUsecase> create(Ref ref) {
    return createReviewUseCase(ref);
  }
}

String _$createReviewUseCaseHash() =>
    r'7d5a41a9a15dbf3fbe188a65e4da17a4f6d2ed1c';

@ProviderFor(updateReviewUseCase)
const updateReviewUseCaseProvider = UpdateReviewUseCaseProvider._();

final class UpdateReviewUseCaseProvider
    extends
        $FunctionalProvider<
          AsyncValue<UpdateReviewUsecase>,
          UpdateReviewUsecase,
          FutureOr<UpdateReviewUsecase>
        >
    with
        $FutureModifier<UpdateReviewUsecase>,
        $FutureProvider<UpdateReviewUsecase> {
  const UpdateReviewUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'updateReviewUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$updateReviewUseCaseHash();

  @$internal
  @override
  $FutureProviderElement<UpdateReviewUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<UpdateReviewUsecase> create(Ref ref) {
    return updateReviewUseCase(ref);
  }
}

String _$updateReviewUseCaseHash() =>
    r'9a6d7cbc4b5ad483915fb793c5b61a2eb361896d';

@ProviderFor(deleteReviewUseCase)
const deleteReviewUseCaseProvider = DeleteReviewUseCaseProvider._();

final class DeleteReviewUseCaseProvider
    extends
        $FunctionalProvider<
          AsyncValue<DeleteReviewUsecase>,
          DeleteReviewUsecase,
          FutureOr<DeleteReviewUsecase>
        >
    with
        $FutureModifier<DeleteReviewUsecase>,
        $FutureProvider<DeleteReviewUsecase> {
  const DeleteReviewUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'deleteReviewUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$deleteReviewUseCaseHash();

  @$internal
  @override
  $FutureProviderElement<DeleteReviewUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<DeleteReviewUsecase> create(Ref ref) {
    return deleteReviewUseCase(ref);
  }
}

String _$deleteReviewUseCaseHash() =>
    r'9197e59e2553ebcdc8e6660f5aac8f834da424bb';
