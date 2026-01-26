import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../entities/notification.dart';

abstract class NotificationRepository {
  Future<Either<Failure, List<Notification>>> getNotifications();

  Future<Either<Failure, void>> markNotificationRead({required int id});

  Future<Either<Failure, void>> saveOrUpdateFcmToken({
    required String token,
    required String deviceType,
  });
}
