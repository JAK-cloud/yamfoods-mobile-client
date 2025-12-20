import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../entities/branch.dart';

/// Repository interface for branch operations.
///
/// This defines the contract for fetching branch data from various sources
/// (remote API, local cache, etc.). All methods return [Either<Failure, T>]
/// for proper error handling.
abstract class BranchRepository {
  /// Gets all branches.
  ///
  /// Returns cached branches immediately if available, then refreshes from
  /// backend in the background. If no cache exists, fetches from backend.
  ///
  /// Returns [Either] containing:
  /// - [Right] with list of branches on success
  /// - [Left] with [Failure] on error
  Future<Either<Failure, List<Branch>>> getAllBranches();
}
