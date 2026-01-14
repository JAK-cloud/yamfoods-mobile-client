import '../../domain/entities/notification.dart';
import '../../domain/entities/user_notification.dart';

/// Mock notification data matching backend response shape exactly.
///
/// Contains:
/// - Order notifications (with orderId)
/// - Product notifications (with productId)
/// - Broadcast notifications (no orderId or productId)
/// - Mix of read and unread notifications
class NotificationMockData {
  NotificationMockData._();

  /// Returns mock user notifications matching backend response format.
  ///
  /// Response format:
  /// {
  ///   id: user_notification_id,
  ///   userId: 123,
  ///   notificationId: 456,
  ///   isRead: false,
  ///   readAt: null,
  ///   notification: { ... }
  /// }
  static List<UserNotification> getMockNotifications() {
    final now = DateTime.now();

    return [
      // Unread order notification
      UserNotification(
        id: 1,
        userId: 123,
        notificationId: 101,
        isRead: false,
        readAt: null,
        notification: Notification(
          id: 101,
          eventKey: 'ORDER_CONFIRMED',
          source: 'SYSTEM',
          audience: 'USER',
          title: 'Order Confirmed',
          body: 'Your order #12345 has been confirmed and is being prepared.',
          orderId: 12345,
          path: '/orders/12345',
          productId: null,
          createdAt: now.subtract(const Duration(minutes: 5)),
          updatedAt: now.subtract(const Duration(minutes: 5)),
        ),
      ),

      // Unread order notification - out for delivery
      UserNotification(
        id: 2,
        userId: 123,
        notificationId: 102,
        isRead: false,
        readAt: null,
        notification: Notification(
          id: 102,
          eventKey: 'ORDER_OUT_FOR_DELIVERY',
          source: 'SYSTEM',
          audience: 'USER',
          title: 'Order Out for Delivery',
          body:
              'Your order #12345 is on its way! Track your delivery in real-time.',
          orderId: 12345,
          path: '/orders/12345',
          productId: null,
          createdAt: now.subtract(const Duration(hours: 1)),
          updatedAt: now.subtract(const Duration(hours: 1)),
        ),
      ),

      // Read order notification - delivered
      UserNotification(
        id: 3,
        userId: 123,
        notificationId: 103,
        isRead: true,
        readAt: now.subtract(const Duration(hours: 2)),
        notification: Notification(
          id: 103,
          eventKey: 'ORDER_DELIVERED',
          source: 'SYSTEM',
          audience: 'USER',
          title: 'Order Delivered',
          body: 'Your order #12344 has been delivered. Enjoy your meal!',
          orderId: 12344,
          path: '/orders/12344',
          productId: null,
          createdAt: now.subtract(const Duration(days: 1)),
          updatedAt: now.subtract(const Duration(days: 1)),
        ),
      ),

      // Unread product notification
      UserNotification(
        id: 4,
        userId: 123,
        notificationId: 104,
        isRead: false,
        readAt: null,
        notification: Notification(
          id: 104,
          eventKey: 'DISCOUNT_NEW_PRODUCT',
          source: 'ADMIN',
          audience: 'USER',
          title: 'New Product Available',
          body: 'Check out our new spicy chicken burger with 20% off!',
          orderId: null,
          path: '/products/789',
          productId: 789,
          createdAt: now.subtract(const Duration(hours: 3)),
          updatedAt: now.subtract(const Duration(hours: 3)),
        ),
      ),

      // Read broadcast notification - promotion
      UserNotification(
        id: 5,
        userId: 123,
        notificationId: 105,
        isRead: true,
        readAt: now.subtract(const Duration(hours: 5)),
        notification: Notification(
          id: 105,
          eventKey: 'PROMOTION',
          source: 'ADMIN',
          audience: 'BROADCAST',
          title: 'Weekend Special',
          body:
              'Get 30% off on all orders this weekend. Use code WEEKEND30 at checkout.',
          orderId: null,
          path: null,
          productId: null,
          createdAt: now.subtract(const Duration(days: 2)),
          updatedAt: now.subtract(const Duration(days: 2)),
        ),
      ),

      // Unread order notification - ready
      UserNotification(
        id: 6,
        userId: 123,
        notificationId: 106,
        isRead: false,
        readAt: null,
        notification: Notification(
          id: 106,
          eventKey: 'ORDER_READY',
          source: 'SYSTEM',
          audience: 'USER',
          title: 'Order Ready for Pickup',
          body:
              'Your order #12346 is ready! You can pick it up now or wait for delivery.',
          orderId: 12346,
          path: '/orders/12346',
          productId: null,
          createdAt: now.subtract(const Duration(minutes: 30)),
          updatedAt: now.subtract(const Duration(minutes: 30)),
        ),
      ),

      // Read reward notification
      UserNotification(
        id: 7,
        userId: 123,
        notificationId: 107,
        isRead: true,
        readAt: now.subtract(const Duration(days: 3)),
        notification: Notification(
          id: 107,
          eventKey: 'REWARD_GRANTED',
          source: 'SYSTEM',
          audience: 'USER',
          title: 'Reward Points Added',
          body:
              'You earned 50 points for your recent order. Keep ordering to earn more!',
          orderId: null,
          path: null,
          productId: null,
          createdAt: now.subtract(const Duration(days: 3)),
          updatedAt: now.subtract(const Duration(days: 3)),
        ),
      ),

      // Unread holiday announcement
      UserNotification(
        id: 8,
        userId: 123,
        notificationId: 108,
        isRead: false,
        readAt: null,
        notification: Notification(
          id: 108,
          eventKey: 'HOLIDAY_ANNOUNCEMENT',
          source: 'ADMIN',
          audience: 'BROADCAST',
          title: 'Holiday Hours',
          body:
              'We will be closed on New Year\'s Day. Orders placed before 10 PM will be delivered.',
          orderId: null,
          path: null,
          productId: null,
          createdAt: now.subtract(const Duration(days: 5)),
          updatedAt: now.subtract(const Duration(days: 5)),
        ),
      ),
    ];
  }
}
