import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification.freezed.dart';

/// Notification entity representing a system or admin notification.
///
/// This entity contains the core notification data including event type,
/// source, audience, content, and optional references to orders or products.
@freezed
sealed class Notification with _$Notification {
  const factory Notification({
    required int id,
    required String
    eventKey, // 'ORDER_CONFIRMED', 'ORDER_READY', 'ORDER_OUT_FOR_DELIVERY', etc.
    required String source, // 'SYSTEM' or 'ADMIN'
    required String audience, // 'USER', 'DRIVER', or 'BROADCAST'
    required String title,
    required String body,
    int? orderId,
    String? path,
    int? productId,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Notification;
}
