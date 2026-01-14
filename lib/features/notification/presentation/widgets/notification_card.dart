import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../app/routes/route_names.dart';
import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_sizes.dart';
import '../../../../app/theme/app_text_styles.dart';
import '../../../../core/utils/date_formatter.dart';
import '../../domain/entities/user_notification.dart';

/// Notification card widget displaying notification information.
///
/// **Design:**
/// - Shows title, body, and relative time
/// - Unread: bolder title, subtle background tint, small left indicator
/// - Read: normal text weight, flat background
/// - Shows trailing > icon if navigable (has orderId or productId)
/// - Tapping anywhere on card navigates if navigable
///
/// **Navigation Rules:**
/// - If orderId exists → navigate to order detail
/// - Else if productId exists → navigate to product detail
/// - Else → no navigation (card is static)
class NotificationCard extends StatelessWidget {
  final UserNotification userNotification;

  const NotificationCard({super.key, required this.userNotification});

  /// Determines if notification is navigable.
  bool get _isNavigable {
    final notification = userNotification.notification;
    return notification.orderId != null || notification.productId != null;
  }

  /// Gets navigation target based on notification data.
  ///
  /// Priority: orderId > productId
  void _handleNavigation(BuildContext context) {
    if (!_isNavigable) return;

    final notification = userNotification.notification;

    // Order takes priority over product
    if (notification.orderId != null) {
      context.push(RouteName.orderDetail, extra: notification.orderId);
    } else if (notification.productId != null) {
      // Note: Product detail requires Product object, not just ID
      // For now, we'll skip navigation for products until we have a way to fetch by ID
      // This matches the design doc's "no fake affordances" principle
      // TODO: Implement product navigation when product detail accepts ID or we fetch product
    }
  }

  @override
  Widget build(BuildContext context) {
    final notification = userNotification.notification;
    final isUnread = !userNotification.isRead;
    final timeAgo = DateFormatter.formatTimeAgo(notification.createdAt);

    return GestureDetector(
      onTap: _isNavigable ? () => _handleNavigation(context) : null,
      child: Container(
        margin: EdgeInsets.only(bottom: AppSizes.md),
        decoration: BoxDecoration(
          color: isUnread
              ? AppColors.primary.withValues(alpha: 0.05)
              : AppColors.white,
          borderRadius: BorderRadius.circular(AppSizes.radius),
          border: Border.all(
            color: isUnread
                ? AppColors.primary.withValues(alpha: 0.2)
                : AppColors.grey.withValues(alpha: 0.1),
            width: 1,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(AppSizes.md),
          child: IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Left indicator for unread notifications
                if (isUnread)
                  Container(
                    width: 4,
                    margin: EdgeInsets.only(right: AppSizes.md),
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                // Main content
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // Title
                      Text(
                        notification.title,
                        style: AppTextStyles.bodyLarge.copyWith(
                          fontWeight: isUnread
                              ? FontWeight.w600
                              : FontWeight.w500,
                          color: AppColors.txtPrimary,
                        ),
                      ),
                      SizedBox(height: AppSizes.xs),
                      // Body
                      Text(
                        notification.body,
                        style: AppTextStyles.bodyMedium.copyWith(
                          color: AppColors.txtSecondary,
                          height: 1.4,
                        ),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: AppSizes.xs),
                      // Time ago
                      Text(
                        timeAgo,
                        style: AppTextStyles.bodySmall.copyWith(
                          color: AppColors.txtSecondary.withValues(alpha: 0.7),
                        ),
                      ),
                    ],
                  ),
                ),
                // Trailing icon if navigable
                if (_isNavigable) ...[
                  SizedBox(width: AppSizes.sm),
                  Icon(
                    Icons.chevron_right_rounded,
                    color: AppColors.txtSecondary.withValues(alpha: 0.5),
                    size: 20,
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}
