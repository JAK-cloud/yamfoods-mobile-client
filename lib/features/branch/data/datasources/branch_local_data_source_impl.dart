import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../../../../core/errors/failure.dart';
import '../models/branch_model.dart';
import 'branch_local_data_source.dart';

/// Implementation of [BranchLocalDataSource] using SharedPreferences.
///
/// Caches branches as JSON string in SharedPreferences.
class BranchLocalDataSourceImpl implements BranchLocalDataSource {
  static const String _cacheKey = 'cached_branches';

  final SharedPreferences _prefs;

  BranchLocalDataSourceImpl(this._prefs);

  @override
  Future<void> saveBranches(List<BranchModel> branches) async {
    try {
      // Convert branches to JSON
      final branchesJson = branches.map((branch) => branch.toJson()).toList();
      final jsonString = jsonEncode(branchesJson);

      await _prefs.setString(_cacheKey, jsonString);
    } catch (e) {
      throw Failure.cache(message: 'Failed to save branches: ${e.toString()}');
    }
  }

  @override
  Future<List<BranchModel>?> getCachedBranches() async {
    try {
      final jsonString = _prefs.getString(_cacheKey);
      if (jsonString == null) {
        return null;
      }

      // Parse JSON string to list of maps
      final List<dynamic> branchesJson = jsonDecode(jsonString);

      // Convert to BranchModel list
      final branches = branchesJson
          .map((json) => BranchModel.fromJson(json as Map<String, dynamic>))
          .toList();

      return branches;
    } catch (e) {
      // Return null on any error (corrupted data, parsing error, etc.)
      // This allows the app to fall back to remote fetch
      return null;
    }
  }

  @override
  Future<void> clearBranches() async {
    try {
      await _prefs.remove(_cacheKey);
    } catch (e) {
      throw Failure.cache(message: 'Failed to clear branches: ${e.toString()}');
    }
  }
}
