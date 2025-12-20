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
