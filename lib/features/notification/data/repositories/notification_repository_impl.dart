import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../../domain/entities/notification.dart';
import '../../domain/repositories/notification_repository.dart';
import '../datasources/notification_remote_data_source.dart';
import '../mappers/notification_mapper.dart';

/// Maps data models to domain entities and coordinates data sources.
///
/// Errors from data sources are propagated without transformation.
class NotificationRepositoryImpl implements NotificationRepository {
  final NotificationRemoteDataSource _remoteDataSource;

  const NotificationRepositoryImpl(this._remoteDataSource);

  @override
  Future<Either<Failure, List<Notification>>> getNotifications() async {
    final result = await _remoteDataSource.getNotifications();

    return result.fold(
      (failure) => Left(failure),
      (notificationModels) {
        final notifications =
            notificationModels.map((model) => model.toDomain()).toList();
        return Right(notifications);
      },
    );
  }

  @override
  Future<Either<Failure, void>> markNotificationRead({required int id}) async {
    final result = await _remoteDataSource.markNotificationRead(id: id);
    return result.fold((failure) => Left(failure), (_) => const Right(null));
  }

  @override
  Future<Either<Failure, void>> saveOrUpdateFcmToken({
    required String token,
    required String deviceType,
  }) async {
    final result = await _remoteDataSource.saveOrUpdateFcmToken(
      token: token,
      deviceType: deviceType,
    );

    return result.fold((failure) => Left(failure), (_) => const Right(null));
  }
}
