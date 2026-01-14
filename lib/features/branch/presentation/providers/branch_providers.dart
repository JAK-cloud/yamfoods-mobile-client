import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/providers/core_providers.dart';
import '../../../../core/network/di/dio_client.dart';
import '../../data/datasources/branch_api_service.dart';
import '../../data/datasources/branch_local_data_source.dart';
import '../../data/datasources/branch_local_data_source_impl.dart';
import '../../data/datasources/branch_remote_data_source.dart';
import '../../data/datasources/branch_remote_data_source_impl.dart';
import '../../data/repositories/branch_repository_impl.dart';
import '../../domain/entities/branch.dart';
import '../../domain/repositories/branch_repository.dart';
import '../../domain/usecases/get_all_branches_usecase.dart';

part 'branch_providers.g.dart';

// ==================== Data Sources ====================

/// Branch API service provider
///
/// Provides Retrofit API service for branch endpoints.
/// Uses baseDioClientProvider since this is an unprotected route.
@riverpod
BranchApiService branchApiService(Ref ref) {
  final dio = ref.watch(baseDioClientProvider);
  return BranchApiService(dio);
}

/// Branch remote data source provider
///
/// Provides implementation for fetching branch data from backend.
@riverpod
BranchRemoteDataSource branchRemoteDataSource(Ref ref) {
  final apiService = ref.watch(branchApiServiceProvider);
  return BranchRemoteDataSourceImpl(apiService);
}

/// Branch local data source provider (async)
///
/// Provides implementation for local caching of branch data.
/// This is async because SharedPreferences initialization is async.
@riverpod
Future<BranchLocalDataSource> branchLocalDataSource(Ref ref) async {
  final prefs = await ref.watch(sharedPreferencesProvider.future);
  return BranchLocalDataSourceImpl(prefs);
}

// ==================== Repository ====================

/// Branch repository provider (async)
///
/// Provides the main repository for branch operations.
/// This is async because it depends on async branchLocalDataSource.
@riverpod
Future<BranchRepository> branchRepository(Ref ref) async {
  final remoteDataSource = ref.watch(branchRemoteDataSourceProvider);
  final localDataSource = await ref.watch(branchLocalDataSourceProvider.future);
  final logger = ref.watch(loggerProvider);
  return BranchRepositoryImpl(remoteDataSource, localDataSource, logger);
}

// ==================== UseCase ====================

/// Get all branches usecase provider (async)
///
/// Provides usecase for fetching all branches.
@riverpod
Future<GetAllBranchesUsecase> getAllBranchesUsecase(Ref ref) async {
  final repository = await ref.watch(branchRepositoryProvider.future);
  return GetAllBranchesUsecase(repository);
}

// ==================== Data Providers ====================

/// Branches list provider
///
/// Fetches all branches using the usecase.
/// Returns [AsyncValue<List<Branch>>] which handles loading, error, and data states.
/// This provider automatically handles caching (returns cached data immediately,
/// refreshes in background).
@riverpod
Future<List<Branch>> branches(Ref ref) async {
  final usecase = await ref.watch(getAllBranchesUsecaseProvider.future);
  final result = await usecase();

  return result.fold((failure) => throw failure, (branches) => branches);
}

// ==================== Current Branch Provider ====================

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
@Riverpod(keepAlive: true)
class CurrentBranch extends _$CurrentBranch {
  @override
  int? build() => null;

  /// Sets the current branch ID.
  ///
  /// Validates that the branch ID is valid (positive integer).
  /// Returns `true` if successful, `false` if validation fails.
  ///
  /// This allows callers to safely check if the operation succeeded
  /// before proceeding with navigation or other actions.
  bool set(int branchId) {
    // Validate branch ID is positive
    if (branchId <= 0) {
      return false;
    }

    try {
      state = branchId;
      return true;
    } catch (e) {
      // If setting state fails for any reason, return false
      return false;
    }
  }

  /// Clears the current branch ID.
  void clear() {
    state = null;
  }
}
