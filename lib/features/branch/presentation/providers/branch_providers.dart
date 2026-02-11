import 'package:geolocator/geolocator.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/permissions/location/location_permission_service.dart';
import '../../../../core/providers/core_providers.dart';
import '../../../../core/network/di/dio_client.dart';
import '../../data/datasources/branch_api_service.dart';
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

// ==================== Repository ====================

/// Branch repository provider.
///
/// Provides the main repository for branch operations (remote only).
@riverpod
BranchRepository branchRepository(Ref ref) {
  final remoteDataSource = ref.watch(branchRemoteDataSourceProvider);
  return BranchRepositoryImpl(remoteDataSource);
}

// ==================== UseCase ====================

/// Get all branches usecase provider.
@riverpod
GetAllBranchesUsecase getAllBranchesUsecase(Ref ref) {
  final repository = ref.watch(branchRepositoryProvider);
  return GetAllBranchesUsecase(repository);
}

// ==================== Data Providers ====================

/// Branches list provider
///
/// Fetches all branches from the API.
@riverpod
Future<List<Branch>> branches(Ref ref) async {
  final usecase = ref.watch(getAllBranchesUsecaseProvider);
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

// ==================== Current Branch Distance Provider ====================

/// Current selected branch distance (km) from user at selection time.
///
/// - `null` when no branch selected or when user position was unavailable.
/// - Set together with [currentBranchProvider]; clear when branch is cleared.
@Riverpod(keepAlive: true)
class CurrentBranchDistance extends _$CurrentBranchDistance {
  @override
  double? build() => null;

  bool set(double? distanceKm) {
    if (distanceKm != null && (distanceKm < 0 || distanceKm.isNaN)) {
      return false;
    }
    try {
      state = distanceKm;
      return true;
    } catch (e) {
      return false;
    }
  }

  void clear() {
    state = null;
  }
}

@riverpod
Future<Position?> userPositionForBranch(Ref ref) async {
  try {
    final position = await LocationPermissionService.requestCurrentLocation();
    return position;
  } catch (_) {
    return null;
  }
}
