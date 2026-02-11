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

/// Branch repository provider.
///
/// Provides the main repository for branch operations (remote only).

@ProviderFor(branchRepository)
const branchRepositoryProvider = BranchRepositoryProvider._();

/// Branch repository provider.
///
/// Provides the main repository for branch operations (remote only).

final class BranchRepositoryProvider
    extends
        $FunctionalProvider<
          BranchRepository,
          BranchRepository,
          BranchRepository
        >
    with $Provider<BranchRepository> {
  /// Branch repository provider.
  ///
  /// Provides the main repository for branch operations (remote only).
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
  $ProviderElement<BranchRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  BranchRepository create(Ref ref) {
    return branchRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(BranchRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<BranchRepository>(value),
    );
  }
}

String _$branchRepositoryHash() => r'4ebf8b43752247a77afbd8b8b4b97830f1602ba9';

/// Get all branches usecase provider.

@ProviderFor(getAllBranchesUsecase)
const getAllBranchesUsecaseProvider = GetAllBranchesUsecaseProvider._();

/// Get all branches usecase provider.

final class GetAllBranchesUsecaseProvider
    extends
        $FunctionalProvider<
          GetAllBranchesUsecase,
          GetAllBranchesUsecase,
          GetAllBranchesUsecase
        >
    with $Provider<GetAllBranchesUsecase> {
  /// Get all branches usecase provider.
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
  $ProviderElement<GetAllBranchesUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetAllBranchesUsecase create(Ref ref) {
    return getAllBranchesUsecase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetAllBranchesUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetAllBranchesUsecase>(value),
    );
  }
}

String _$getAllBranchesUsecaseHash() =>
    r'e0874634e89fb1598408ab74d1b5e16378a7f4cb';

/// Branches list provider
///
/// Fetches all branches from the API.

@ProviderFor(branches)
const branchesProvider = BranchesProvider._();

/// Branches list provider
///
/// Fetches all branches from the API.

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
  /// Fetches all branches from the API.
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

String _$branchesHash() => r'ac725c320b28264ec6a6b9cdb5d116540a69fbbf';

/// Current selected branch ID provider
///
/// Stores the currently selected branch ID that the user has chosen.
/// - `null` means no branch has been selected yet
/// - When user selects a branch, this is updated with the branch ID
/// - When user changes branch, this value is overwritten with the new branch ID
///
/// **CRITICAL:** Uses `keepAlive: true` to persist state across navigation.
/// Without this, the provider would be disposed when navigating away,
/// losing the saved branch ID.
///
/// Usage:
/// ```dart
/// // Set current branch (returns true on success, false on failure)
/// final success = ref.read(currentBranchProvider.notifier).set(branchId);
/// if (success) {
///   // Navigate or perform action
/// }
///
/// // Get current branch ID
/// final branchId = ref.watch(currentBranchProvider);
///
/// // Clear current branch (optional)
/// ref.read(currentBranchProvider.notifier).clear();
/// ```

@ProviderFor(CurrentBranch)
const currentBranchProvider = CurrentBranchProvider._();

/// Current selected branch ID provider
///
/// Stores the currently selected branch ID that the user has chosen.
/// - `null` means no branch has been selected yet
/// - When user selects a branch, this is updated with the branch ID
/// - When user changes branch, this value is overwritten with the new branch ID
///
/// **CRITICAL:** Uses `keepAlive: true` to persist state across navigation.
/// Without this, the provider would be disposed when navigating away,
/// losing the saved branch ID.
///
/// Usage:
/// ```dart
/// // Set current branch (returns true on success, false on failure)
/// final success = ref.read(currentBranchProvider.notifier).set(branchId);
/// if (success) {
///   // Navigate or perform action
/// }
///
/// // Get current branch ID
/// final branchId = ref.watch(currentBranchProvider);
///
/// // Clear current branch (optional)
/// ref.read(currentBranchProvider.notifier).clear();
/// ```
final class CurrentBranchProvider
    extends $NotifierProvider<CurrentBranch, int?> {
  /// Current selected branch ID provider
  ///
  /// Stores the currently selected branch ID that the user has chosen.
  /// - `null` means no branch has been selected yet
  /// - When user selects a branch, this is updated with the branch ID
  /// - When user changes branch, this value is overwritten with the new branch ID
  ///
  /// **CRITICAL:** Uses `keepAlive: true` to persist state across navigation.
  /// Without this, the provider would be disposed when navigating away,
  /// losing the saved branch ID.
  ///
  /// Usage:
  /// ```dart
  /// // Set current branch (returns true on success, false on failure)
  /// final success = ref.read(currentBranchProvider.notifier).set(branchId);
  /// if (success) {
  ///   // Navigate or perform action
  /// }
  ///
  /// // Get current branch ID
  /// final branchId = ref.watch(currentBranchProvider);
  ///
  /// // Clear current branch (optional)
  /// ref.read(currentBranchProvider.notifier).clear();
  /// ```
  const CurrentBranchProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'currentBranchProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$currentBranchHash();

  @$internal
  @override
  CurrentBranch create() => CurrentBranch();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(int? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<int?>(value),
    );
  }
}

String _$currentBranchHash() => r'1f27a3ed04f49b7011777553bff4466178078d90';

/// Current selected branch ID provider
///
/// Stores the currently selected branch ID that the user has chosen.
/// - `null` means no branch has been selected yet
/// - When user selects a branch, this is updated with the branch ID
/// - When user changes branch, this value is overwritten with the new branch ID
///
/// **CRITICAL:** Uses `keepAlive: true` to persist state across navigation.
/// Without this, the provider would be disposed when navigating away,
/// losing the saved branch ID.
///
/// Usage:
/// ```dart
/// // Set current branch (returns true on success, false on failure)
/// final success = ref.read(currentBranchProvider.notifier).set(branchId);
/// if (success) {
///   // Navigate or perform action
/// }
///
/// // Get current branch ID
/// final branchId = ref.watch(currentBranchProvider);
///
/// // Clear current branch (optional)
/// ref.read(currentBranchProvider.notifier).clear();
/// ```

abstract class _$CurrentBranch extends $Notifier<int?> {
  int? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<int?, int?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<int?, int?>,
              int?,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

/// Current selected branch distance (km) from user at selection time.
///
/// - `null` when no branch selected or when user position was unavailable.
/// - Set together with [currentBranchProvider]; clear when branch is cleared.

@ProviderFor(CurrentBranchDistance)
const currentBranchDistanceProvider = CurrentBranchDistanceProvider._();

/// Current selected branch distance (km) from user at selection time.
///
/// - `null` when no branch selected or when user position was unavailable.
/// - Set together with [currentBranchProvider]; clear when branch is cleared.
final class CurrentBranchDistanceProvider
    extends $NotifierProvider<CurrentBranchDistance, double?> {
  /// Current selected branch distance (km) from user at selection time.
  ///
  /// - `null` when no branch selected or when user position was unavailable.
  /// - Set together with [currentBranchProvider]; clear when branch is cleared.
  const CurrentBranchDistanceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'currentBranchDistanceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$currentBranchDistanceHash();

  @$internal
  @override
  CurrentBranchDistance create() => CurrentBranchDistance();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(double? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<double?>(value),
    );
  }
}

String _$currentBranchDistanceHash() =>
    r'93f26a591077273b6a2010f10da70f2e909d7b5a';

/// Current selected branch distance (km) from user at selection time.
///
/// - `null` when no branch selected or when user position was unavailable.
/// - Set together with [currentBranchProvider]; clear when branch is cleared.

abstract class _$CurrentBranchDistance extends $Notifier<double?> {
  double? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<double?, double?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<double?, double?>,
              double?,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(userPositionForBranch)
const userPositionForBranchProvider = UserPositionForBranchProvider._();

final class UserPositionForBranchProvider
    extends
        $FunctionalProvider<
          AsyncValue<Position?>,
          Position?,
          FutureOr<Position?>
        >
    with $FutureModifier<Position?>, $FutureProvider<Position?> {
  const UserPositionForBranchProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'userPositionForBranchProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$userPositionForBranchHash();

  @$internal
  @override
  $FutureProviderElement<Position?> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<Position?> create(Ref ref) {
    return userPositionForBranch(ref);
  }
}

String _$userPositionForBranchHash() =>
    r'e1013cf18676e21fadae1cf1daad70be1228d6d6';
