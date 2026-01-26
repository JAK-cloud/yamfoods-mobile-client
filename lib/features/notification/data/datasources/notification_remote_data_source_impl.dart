import 'package:dartz/dartz.dart';

import '../../../../core/errors/error_handler.dart';
import '../../../../core/errors/failure.dart';
import '../../../../core/network/api/request_wrapper.dart';
import 'notification_api_service.dart';
import 'notification_remote_data_source.dart';
import '../models/notification_model.dart';

/// Handles API calls and error transformation.
///
/// **Error Handling:**
/// - Retrofit throws [DioException] for non-2xx responses
/// - All exceptions are caught and transformed via [ErrorHandler.handleException]
class NotificationRemoteDataSourceImpl implements NotificationRemoteDataSource {
  final NotificationApiService _apiService;

  const NotificationRemoteDataSourceImpl(this._apiService);

  @override
  Future<Either<Failure, List<NotificationModel>>> getNotifications() async {
    try {
      final response = await _apiService.getNotifications();
      return Right(response.data);
    } catch (e) {
      return Left(ErrorHandler.handleException(e));
    }
  }

  @override
  Future<Either<Failure, void>> markNotificationRead({required int id}) async {
    try {
      await _apiService.markNotificationRead(id);
      return const Right(null);
    } catch (e) {
      return Left(ErrorHandler.handleException(e));
    }
  }

  @override
  Future<Either<Failure, void>> saveOrUpdateFcmToken({
    required String token,
    required String deviceType,
  }) async {
    try {
      final requestData = {'token': token, 'deviceType': deviceType};
      final body = RequestWrapper.wrap(requestData);

      await _apiService.saveOrUpdateFcmToken(body);
      return const Right(null);
    } catch (e) {
      return Left(ErrorHandler.handleException(e));
    }
  }
}
