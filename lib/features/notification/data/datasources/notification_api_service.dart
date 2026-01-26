import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../core/network/api/api_routes.dart';
import '../../../../core/network/models/api_response.dart';
import '../models/notification_model.dart';

part 'notification_api_service.g.dart';

@RestApi()
abstract class NotificationApiService {
  factory NotificationApiService(Dio dio, {String? baseUrl}) =
      _NotificationApiService;

  @GET(ApiRoutes.getNotifications)
  Future<ApiResponse<List<NotificationModel>>> getNotifications();

  /// Marks a notification as read.
  ///
  /// Backend: `PATCH /api/notifications/:id/read`
  /// - No body
  /// - No response body
  @PATCH(ApiRoutes.markNotificationRead)
  Future<void> markNotificationRead(@Path('id') int id);

  @POST(ApiRoutes.saveOrUpdateFcmToken)
  Future<void> saveOrUpdateFcmToken(@Body() Map<String, dynamic> body);
}
