import '../models/branch_model.dart';

/// Local data source interface for branch caching.
///
/// This defines the contract for caching branch data locally.
abstract class BranchLocalDataSource {
  /// Saves branches to local cache.
  ///
  /// Throws [Failure] if save operation fails.
  Future<void> saveBranches(List<BranchModel> branches);

  /// Gets cached branches from local storage.
  ///
  /// Returns `null` if no cached data exists or if data is corrupted.
  Future<List<BranchModel>?> getCachedBranches();

  /// Clears cached branches.
  ///
  /// Throws [Failure] if clear operation fails.
  Future<void> clearBranches();
}
