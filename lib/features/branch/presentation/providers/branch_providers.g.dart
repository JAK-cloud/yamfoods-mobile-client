// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'branch_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Branch API service provider
///
/// Provides Retrofit API service for branch endpoints.
/// Uses baseDioClientProvider since this is an unprotected route.

@ProviderFor(branchApiService)
const branchApiServiceProvider = BranchApiServiceProvider._();

/// Branch API service provider
///
/// Provides Retrofit API service for branch endpoints.
/// Uses baseDioClientProvider since this is an unprotected route.

final class BranchApiServiceProvider
    extends
        $FunctionalProvider<
          BranchApiService,
          BranchApiService,
          BranchApiService
        >
    with $Provider<BranchApiService> {
  /// Branch API service provider
  ///
  /// Provides Retrofit API service for branch endpoints.
  /// Uses baseDioClientProvider since this is an unprotected route.
  const BranchApiServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'branchApiServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$branchApiServiceHash();

  @$internal
  @override
  $ProviderElement<BranchApiService> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  BranchApiService create(Ref ref) {
    return branchApiService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(BranchApiService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<BranchApiService>(value),
    );
  }
}

String _$branchApiServiceHash() => r'691c8f2bf3767c15f010472be68c2e6c915dea90';

/// Branch remote data source provider
///
/// Provides implementation for fetching branch data from backend.

@ProviderFor(branchRemoteDataSource)
const branchRemoteDataSourceProvider = BranchRemoteDataSourceProvider._();

/// Branch remote data source provider
///
/// Provides implementation for fetching branch data from backend.

final class BranchRemoteDataSourceProvider
    extends
        $FunctionalProvider<
          BranchRemoteDataSource,
          BranchRemoteDataSource,
          BranchRemoteDataSource
        >
    with $Provider<BranchRemoteDataSource> {
  /// Branch remote data source provider
  ///
  /// Provides implementation for fetching branch data from backend.
  const BranchRemoteDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'branchRemoteDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$branchRemoteDataSourceHash();

  @$internal
  @override
  $ProviderElement<BranchRemoteDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  BranchRemoteDataSource create(Ref ref) {
    return branchRemoteDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(BranchRemoteDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<BranchRemoteDataSource>(value),
    );
  }
}

String _$branchRemoteDataSourceHash() =>
    r'8a9c0790e1cd5eeb27819166d027d6470615ab97';

/// Branch local data source provider (async)
///
/// Provides implementation for local caching of branch data.
/// This is async because SharedPreferences initialization is async.

@ProviderFor(branchLocalDataSource)
const branchLocalDataSourceProvider = BranchLocalDataSourceProvider._();

/// Branch local data source provider (async)
///
/// Provides implementation for local caching of branch data.
/// This is async because SharedPreferences initialization is async.

final class BranchLocalDataSourceProvider
    extends
        $FunctionalProvider<
          AsyncValue<BranchLocalDataSource>,
          BranchLocalDataSource,
          FutureOr<BranchLocalDataSource>
        >
    with
        $FutureModifier<BranchLocalDataSource>,
        $FutureProvider<BranchLocalDataSource> {
  /// Branch local data source provider (async)
  ///
  /// Provides implementation for local caching of branch data.
  /// This is async because SharedPreferences initialization is async.
  const BranchLocalDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'branchLocalDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$branchLocalDataSourceHash();

  @$internal
  @override
  $FutureProviderElement<BranchLocalDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<BranchLocalDataSource> create(Ref ref) {
    return branchLocalDataSource(ref);
  }
}

String _$branchLocalDataSourceHash() =>
    r'afd7fbb436bbc5c82163cf69c6795b6d39eb40b5';

/// Branch repository provider (async)
///
/// Provides the main repository for branch operations.
/// This is async because it depends on async branchLocalDataSource.

@ProviderFor(branchRepository)
const branchRepositoryProvider = BranchRepositoryProvider._();

/// Branch repository provider (async)
///
/// Provides the main repository for branch operations.
/// This is async because it depends on async branchLocalDataSource.

final class BranchRepositoryProvider
    extends
        $FunctionalProvider<
          AsyncValue<BranchRepository>,
          BranchRepository,
          FutureOr<BranchRepository>
        >
    with $FutureModifier<BranchRepository>, $FutureProvider<BranchRepository> {
  /// Branch repository provider (async)
  ///
  /// Provides the main repository for branch operations.
  /// This is async because it depends on async branchLocalDataSource.
  const BranchRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'branchRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$branchRepositoryHash();

  @$internal
  @override
  $FutureProviderElement<BranchRepository> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<BranchRepository> create(Ref ref) {
    return branchRepository(ref);
  }
}

String _$branchRepositoryHash() => r'51f6362204ee92412658cd8827128a6da4ccb204';

/// Get all branches usecase provider (async)
///
/// Provides usecase for fetching all branches.

@ProviderFor(getAllBranchesUsecase)
const getAllBranchesUsecaseProvider = GetAllBranchesUsecaseProvider._();

/// Get all branches usecase provider (async)
///
/// Provides usecase for fetching all branches.

final class GetAllBranchesUsecaseProvider
    extends
        $FunctionalProvider<
          AsyncValue<GetAllBranchesUsecase>,
          GetAllBranchesUsecase,
          FutureOr<GetAllBranchesUsecase>
        >
    with
        $FutureModifier<GetAllBranchesUsecase>,
        $FutureProvider<GetAllBranchesUsecase> {
  /// Get all branches usecase provider (async)
  ///
  /// Provides usecase for fetching all branches.
  const GetAllBranchesUsecaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getAllBranchesUsecaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getAllBranchesUsecaseHash();

  @$internal
  @override
  $FutureProviderElement<GetAllBranchesUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<GetAllBranchesUsecase> create(Ref ref) {
    return getAllBranchesUsecase(ref);
  }
}

String _$getAllBranchesUsecaseHash() =>
    r'4cf1da7ed8afa2944c04d39e4ced73982d27135a';

/// Branches list provider
///
/// Fetches all branches using the usecase.
/// Returns [AsyncValue<List<Branch>>] which handles loading, error, and data states.
/// This provider automatically handles caching (returns cached data immediately,
/// refreshes in background).

@ProviderFor(branches)
const branchesProvider = BranchesProvider._();

/// Branches list provider
///
/// Fetches all branches using the usecase.
/// Returns [AsyncValue<List<Branch>>] which handles loading, error, and data states.
/// This provider automatically handles caching (returns cached data immediately,
/// refreshes in background).

final class BranchesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Branch>>,
          List<Branch>,
          FutureOr<List<Branch>>
        >
    with $FutureModifier<List<Branch>>, $FutureProvider<List<Branch>> {
  /// Branches list provider
  ///
  /// Fetches all branches using the usecase.
  /// Returns [AsyncValue<List<Branch>>] which handles loading, error, and data states.
  /// This provider automatically handles caching (returns cached data immediately,
  /// refreshes in background).
  const BranchesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'branchesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$branchesHash();

  @$internal
  @override
  $FutureProviderElement<List<Branch>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Branch>> create(Ref ref) {
    return branches(ref);
  }
}

String _$branchesHash() => r'c4e06b681c9d2edfbee1b77bf6455b6f5af0050d';
