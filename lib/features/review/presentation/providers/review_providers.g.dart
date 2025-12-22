// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(reviewApiService)
const reviewApiServiceProvider = ReviewApiServiceProvider._();

final class ReviewApiServiceProvider
    extends
        $FunctionalProvider<
          ReviewApiService,
          ReviewApiService,
          ReviewApiService
        >
    with $Provider<ReviewApiService> {
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
  $ProviderElement<ReviewApiService> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  ReviewApiService create(Ref ref) {
    return reviewApiService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ReviewApiService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ReviewApiService>(value),
    );
  }
}

String _$reviewApiServiceHash() => r'bf4a446cfca22447b3203213490f203b9990adbb';

@ProviderFor(reviewRemoteDataSource)
const reviewRemoteDataSourceProvider = ReviewRemoteDataSourceProvider._();

final class ReviewRemoteDataSourceProvider
    extends
        $FunctionalProvider<
          ReviewRemoteDataSource,
          ReviewRemoteDataSource,
          ReviewRemoteDataSource
        >
    with $Provider<ReviewRemoteDataSource> {
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
  $ProviderElement<ReviewRemoteDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ReviewRemoteDataSource create(Ref ref) {
    return reviewRemoteDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ReviewRemoteDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ReviewRemoteDataSource>(value),
    );
  }
}

String _$reviewRemoteDataSourceHash() =>
    r'eb9dfc005b8883c6bb7b68ea7b24a8d0d6e74fb3';

@ProviderFor(reviewRepository)
const reviewRepositoryProvider = ReviewRepositoryProvider._();

final class ReviewRepositoryProvider
    extends
        $FunctionalProvider<
          ReviewRepository,
          ReviewRepository,
          ReviewRepository
        >
    with $Provider<ReviewRepository> {
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
  $ProviderElement<ReviewRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  ReviewRepository create(Ref ref) {
    return reviewRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ReviewRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ReviewRepository>(value),
    );
  }
}

String _$reviewRepositoryHash() => r'b92961a0a5d162e38025b24df9b74a69dd78fd77';

@ProviderFor(getAllReviewsUseCase)
const getAllReviewsUseCaseProvider = GetAllReviewsUseCaseProvider._();

final class GetAllReviewsUseCaseProvider
    extends
        $FunctionalProvider<
          GetAllReviewsUsecase,
          GetAllReviewsUsecase,
          GetAllReviewsUsecase
        >
    with $Provider<GetAllReviewsUsecase> {
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
  $ProviderElement<GetAllReviewsUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetAllReviewsUsecase create(Ref ref) {
    return getAllReviewsUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetAllReviewsUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetAllReviewsUsecase>(value),
    );
  }
}

String _$getAllReviewsUseCaseHash() =>
    r'84b9fb4e09bb7aa24b97b5a6768c84de31991117';

@ProviderFor(createReviewUseCase)
const createReviewUseCaseProvider = CreateReviewUseCaseProvider._();

final class CreateReviewUseCaseProvider
    extends
        $FunctionalProvider<
          CreateReviewUsecase,
          CreateReviewUsecase,
          CreateReviewUsecase
        >
    with $Provider<CreateReviewUsecase> {
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
  $ProviderElement<CreateReviewUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  CreateReviewUsecase create(Ref ref) {
    return createReviewUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CreateReviewUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CreateReviewUsecase>(value),
    );
  }
}

String _$createReviewUseCaseHash() =>
    r'edcacecfca9971afb01492cefa59bf2903ba4779';

@ProviderFor(updateReviewUseCase)
const updateReviewUseCaseProvider = UpdateReviewUseCaseProvider._();

final class UpdateReviewUseCaseProvider
    extends
        $FunctionalProvider<
          UpdateReviewUsecase,
          UpdateReviewUsecase,
          UpdateReviewUsecase
        >
    with $Provider<UpdateReviewUsecase> {
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
  $ProviderElement<UpdateReviewUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  UpdateReviewUsecase create(Ref ref) {
    return updateReviewUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(UpdateReviewUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<UpdateReviewUsecase>(value),
    );
  }
}

String _$updateReviewUseCaseHash() =>
    r'fe7a9cafbb3033e0d31024a26cef20a969466702';

@ProviderFor(deleteReviewUseCase)
const deleteReviewUseCaseProvider = DeleteReviewUseCaseProvider._();

final class DeleteReviewUseCaseProvider
    extends
        $FunctionalProvider<
          DeleteReviewUsecase,
          DeleteReviewUsecase,
          DeleteReviewUsecase
        >
    with $Provider<DeleteReviewUsecase> {
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
  $ProviderElement<DeleteReviewUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  DeleteReviewUsecase create(Ref ref) {
    return deleteReviewUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DeleteReviewUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DeleteReviewUsecase>(value),
    );
  }
}

String _$deleteReviewUseCaseHash() =>
    r'4460f279d1330b7ce025b256dfc0b038ed789d5b';
