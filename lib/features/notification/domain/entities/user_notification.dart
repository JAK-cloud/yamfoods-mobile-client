import 'package:freezed_annotation/freezed_annotation.dart';

import 'notification.dart';

part 'user_notification.freezed.dart';

/// UserNotification entity representing a user's relationship with a notification.
///
/// This entity links a user to a notification and tracks read status.
/// It includes the complete notification data as a nested object.
@freezed
sealed class UserNotification with _$UserNotification {
  const factory UserNotification({
    required int id, // user_notification_id
    required int userId,
    required int notificationId,
    required bool isRead,
    DateTime? readAt,
    required Notification notification, // Complete notification data
  }) = _UserNotification;
}
