import 'package:dartz/dartz.dart';
import 'package:logger/logger.dart';

import '../../../../core/errors/failure.dart';
import '../../domain/entities/branch.dart';
import '../../domain/repositories/branch_repository.dart';
import '../datasources/branch_local_data_source.dart';
import '../datasources/branch_remote_data_source.dart';
import '../mappers/branch_mapper.dart';

/// Implementation of [BranchRepository] following Clean Architecture principles.
///
/// This class:
/// - Coordinates between remote and local data sources
/// - Maps data models to domain entities
/// - Handles caching: returns cached data immediately, refreshes in background
/// - Provides a clean interface for use cases
/// - Logs errors for debugging and monitoring
class BranchRepositoryImpl implements BranchRepository {
  final BranchRemoteDataSource _remoteDataSource;
  final BranchLocalDataSource _localDataSource;
  final Logger _logger;

  const BranchRepositoryImpl(
    this._remoteDataSource,
    this._localDataSource,
    this._logger,
  );

  @override
  Future<Either<Failure, List<Branch>>> getAllBranches() async {
    // First, try to get cached branches
    final cachedBranches = await _localDataSource.getCachedBranches();

    // If we have cached data, return it immediately
    if (cachedBranches != null && cachedBranches.isNotEmpty) {
      final domainBranches = cachedBranches.map((b) => b.toDomain()).toList();

      // Refresh from backend in the background (fire and forget)
      _refreshBranchesInBackground();

      return Right(domainBranches);
    }

    // No cache available, fetch from remote
    final result = await _remoteDataSource.getAllBranches();

    return result.fold((failure) => Left(failure), (branchModels) async {
      // Save to cache
      try {
        await _localDataSource.saveBranches(branchModels);
        _logger.d('Successfully cached ${branchModels.length} branches');
      } catch (e) {
        // Log error but don't fail the request
        // Cache failure shouldn't prevent data from being returned
        _logger.w(
          'Failed to cache branches (non-critical): ${e.toString()}',
          error: e,
        );
      }

      // Map to domain entities
      final domainBranches = branchModels.map((b) => b.toDomain()).toList();
      return Right(domainBranches);
    });
  }

  /// Refreshes branches from remote in the background.
  ///
  /// This is called after returning cached data to keep cache fresh.
  /// Errors are logged but don't disrupt the user experience.
  Future<void> _refreshBranchesInBackground() async {
    try {
      _logger.d('Starting background refresh of branches');
      final result = await _remoteDataSource.getAllBranches();
      result.fold(
        (failure) {
          // Log error but don't disrupt user - cache remains valid
          _logger.w(
            'Background refresh failed (non-critical): ${failure.toString()}',
            error: failure,
          );
        },
        (branchModels) async {
          // Update cache with fresh data
          try {
            await _localDataSource.saveBranches(branchModels);
            _logger.d(
              'Background refresh successful: cached ${branchModels.length} branches',
            );
          } catch (e) {
            _logger.w(
              'Background refresh: failed to update cache (non-critical): ${e.toString()}',
              error: e,
            );
          }
        },
      );
    } catch (e) {
      // Log unexpected errors in background refresh
      _logger.e(
        'Unexpected error during background refresh: ${e.toString()}',
        error: e,
        stackTrace: e is Error ? e.stackTrace : StackTrace.current,
      );
    }
  }
}
