import 'dart:async';

import 'package:flutter/material.dart' hide Notification;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../app/routes/route_names.dart';
import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_sizes.dart';
import '../../../../app/theme/app_text_styles.dart';
import '../../../../core/utils/date_formatter.dart';
import '../../domain/entities/notification.dart';
import '../providers/notification_providers.dart';

/// Minimal, professional notification card widget.
///
/// Features:
/// - No elevation or shadow (designed for ListView.separated with dividers)
/// - Visual distinction for unread notifications
/// - Navigation indicator (>) when orderId or productId is present
/// - Content-based height
class NotificationCard extends ConsumerStatefulWidget {
  final Notification notification;

  const NotificationCard({super.key, required this.notification});

  @override
  ConsumerState<NotificationCard> createState() => _NotificationCardState();
}

class _NotificationCardState extends ConsumerState<NotificationCard> {
  bool? _optimisticIsRead;

  @override
  Widget build(BuildContext context) {
    // null isRead means read (default to read)
    final isRead = _optimisticIsRead ?? (widget.notification.isRead ?? true);
    final hasNavigation =
        widget.notification.orderId != null ||
        widget.notification.productId != null;

    void onTap() {
      // Mark as read if unread
      final wasUnread = widget.notification.isRead == false;
      if (wasUnread) {
        // Optimistic UI update (fire-and-forget backend update)
        if (_optimisticIsRead != true) {
          setState(() => _optimisticIsRead = true);
        }

        unawaited(
          ref
              .read(markNotificationReadProvider(widget.notification.id).future)
              .catchError((_) {
                // Silent failure (no toast/snackbar) as requested.
              }),
        );
      }

      // Navigate if productId is present
      if (widget.notification.productId != null) {
        context.push(
          RouteName.productDetail,
          extra: widget.notification.productId,
        );
      }
      // Navigate if orderId is present
      else if (widget.notification.orderId != null) {
        context.push(
          RouteName.orderDetail,
          extra: widget.notification.orderId,
        );
      }
    }

    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(bottom: AppSizes.md),
        decoration: BoxDecoration(
          color: isRead
              ? AppColors.white
              : AppColors.primary.withValues(alpha: 0.05),
          borderRadius: BorderRadius.circular(AppSizes.radius),
          border: Border.all(
            color: isRead
                ? AppColors.grey.withValues(alpha: 0.1)
                : AppColors.primary.withValues(alpha: 0.2),
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
                if (!isRead)
                  Container(
                    width: 4,
                    margin: EdgeInsets.only(right: AppSizes.md),
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                // Content
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // Title
                      Text(
                        widget.notification.title,
                        style: AppTextStyles.bodyLarge.copyWith(
                          fontWeight: isRead ? FontWeight.w500 : FontWeight.w600,
                          color: AppColors.txtPrimary,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: AppSizes.xs),
                      // Body
                      Text(
                        widget.notification.body,
                        style: AppTextStyles.bodyMedium.copyWith(
                          color: AppColors.txtSecondary,
                          height: 1.4,
                        ),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: AppSizes.xs),
                      // Timestamp
                      Text(
                        DateFormatter.formatTimeAgo(
                          widget.notification.createdAt,
                        ),
                        style: AppTextStyles.bodySmall.copyWith(
                          color: AppColors.txtSecondary.withValues(alpha: 0.7),
                        ),
                      ),
                    ],
                  ),
                ),
                // Navigation indicator
                if (hasNavigation) ...[
                  SizedBox(width: AppSizes.sm),
                  Icon(
                    Icons.chevron_right_rounded,
                    size: 20,
                    color: AppColors.txtSecondary.withValues(alpha: 0.5),
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
