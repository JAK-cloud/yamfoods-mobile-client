import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../app/components/empty_state.dart';
import '../../../../app/components/error_widget.dart';
import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_sizes.dart';
import '../../../../app/widgets/custom_app_bar.dart';
import '../../../../core/errors/failure.dart';
import '../providers/notification_notifier.dart';
import '../widgets/notification_card.dart';

/// Notification screen displaying list of user notifications.
///
/// **Behavior:**
/// - Fetches notifications on entry (automatic via provider build)
/// - Renders list immediately
/// - Marks all unread notifications as read when navigating away (like Instagram)
/// - Updates UI instantly to reflect read status
///
/// **Design:**
/// - Simple list of notification cards
/// - No pagination, filters, or fancy features
/// - Boring, predictable UX
class NotificationScreen extends ConsumerStatefulWidget {
  const NotificationScreen({super.key});

  @override
  ConsumerState<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends ConsumerState<NotificationScreen> {
 

  @override
  Widget build(BuildContext context) {
    final notificationState = ref.watch(notificationProvider);

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: const CustomAppBar(title: 'Notifications'),
      body: notificationState.when(
        data: (notifications) {
          if (notifications.isEmpty) {
            return EmptyState(
              icon: Icons.notifications_none_outlined,
              title: 'No notifications',
              subtitle: 'You\'re all caught up!',
            );
          }

          return RefreshIndicator(
            onRefresh: () async {
              await ref.read(notificationProvider.notifier).loadNotifications();
            },
            color: AppColors.primary,
            child: ListView.builder(
              padding: EdgeInsets.all(AppSizes.md),
              itemCount: notifications.length,
              itemBuilder: (context, index) {
                return NotificationCard(userNotification: notifications[index]);
              },
            ),
          );
        },
        error: (error, stackTrace) => ErrorWidgett(
          icon: Icons.error_outline,
          title: 'Error loading notifications',
          failure: error is Failure
              ? error
              : Failure.unexpected(message: error.toString()),
          onRetry: () {
            ref.read(notificationProvider.notifier).loadNotifications();
          },
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
