import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../domain/entities/user_notification.dart';
import '../../data/mock_data/notification_mock_data.dart';

part 'notification_notifier.g.dart';

/// Manages notification list state and operations.
///
/// **State Management:**
/// - Loads notifications (mock-backed for now)
/// - Marks notifications as read
/// - Updates local state instantly
@riverpod
class NotificationNotifier extends _$NotificationNotifier {
  @override
  Future<List<UserNotification>> build() async {
    return await _load();
  }

  /// Loads notifications from mock data source.
  ///
  /// In the future, this will call a usecase that fetches from API.
  Future<void> loadNotifications() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => _load());
  }

  /// Marks multiple notifications as read.
  ///
  /// Updates local state instantly to reflect read status in UI.
  /// In the future, this will call markMultipleUserNotificationsAsRead API.
  ///
  /// Parameters:
  /// - [notificationIds]: List of user notification IDs to mark as read
  Future<void> markAllAsRead(List<int> notificationIds) async {
    final current = state.value ?? <UserNotification>[];
    final now = DateTime.now();

    // Update local state: mark specified notifications as read
    final updated = current.map((notification) {
      if (notificationIds.contains(notification.id) && !notification.isRead) {
        return notification.copyWith(isRead: true, readAt: now);
      }
      return notification;
    }).toList();

    state = AsyncValue.data(updated);
  }

  /// Loads notifications from mock data source.
  ///
  /// In the future, this will call a usecase that fetches from API.
  Future<List<UserNotification>> _load() async {
    // Simulate network delay
    await Future.delayed(const Duration(milliseconds: 300));
    return NotificationMockData.getMockNotifications();
  }
}
