import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/network/di/dio_client.dart';
import '../../data/datasources/achievement_api_service.dart';
import '../../data/datasources/achievement_remote_data_source.dart';
import '../../data/datasources/achievement_remote_data_source_impl.dart';
import '../../data/repositories/achievement_repository_impl.dart';
import '../../domain/entities/achievement_point.dart';
import '../../domain/entities/achievement_transaction.dart';
import '../../domain/repositories/achievement_repository.dart';
import '../../domain/usecases/get_achievement_point_usecase.dart';
import '../../domain/usecases/send_point_usecase.dart';
import '../../domain/usecases/get_achievement_history_usecase.dart';

part 'achievement_providers.g.dart';

@riverpod
AchievementApiService achievementApiService(Ref ref) {
  final dio = ref.watch(baseDioClientProvider);
  return AchievementApiService(dio);
}

@riverpod
AchievementRemoteDataSource achievementRemoteDataSource(Ref ref) {
  final apiService = ref.watch(achievementApiServiceProvider);
  return AchievementRemoteDataSourceImpl(apiService);
}

@riverpod
AchievementRepository achievementRepository(Ref ref) {
  final remoteDataSource = ref.watch(achievementRemoteDataSourceProvider);
  return AchievementRepositoryImpl(remoteDataSource);
}

@riverpod
GetAchievementPointUsecase getAchievementPointUseCase(Ref ref) {
  return GetAchievementPointUsecase(ref.watch(achievementRepositoryProvider));
}

@riverpod
SendPointUsecase sendPointUseCase(Ref ref) {
  return SendPointUsecase(ref.watch(achievementRepositoryProvider));
}

@riverpod
GetAchievementHistoryUsecase getAchievementHistoryUseCase(Ref ref) {
  return GetAchievementHistoryUsecase(ref.watch(achievementRepositoryProvider));
}

/// FutureProvider for getting achievement points.
@riverpod
Future<AchievementPoint> achievementPoint(Ref ref) async {
  final useCase = ref.watch(getAchievementPointUseCaseProvider);
  final result = await useCase.call();
  return result.fold((failure) => throw failure, (point) => point);
}

/// FutureProvider for sending points to another user.
///
/// Parameters:
/// - [point]: The number of points to send
/// - [phone]: The phone number of the recipient
@riverpod
Future<void> sendPoint(Ref ref, int point, String phone) async {
  final useCase = ref.watch(sendPointUseCaseProvider);
  final result = await useCase.call(point: point, phone: phone);
  result.fold((failure) => throw failure, (_) {});
}

/// FutureProvider for getting achievement history.
@riverpod
Future<List<AchievementTransaction>> achievementHistory(Ref ref) async {
  final useCase = ref.watch(getAchievementHistoryUseCaseProvider);
  final result = await useCase.call();
  return result.fold((failure) => throw failure, (history) => history);
}
