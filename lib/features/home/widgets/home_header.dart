import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../app/routes/auth_guard_helper.dart';
import '../../../../app/routes/route_names.dart';
import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_sizes.dart';
import '../../../../app/theme/app_text_styles.dart';
import '../../../../app/theme/app_texts.dart';
import '../../../../features/cart/presentation/widgets/animated_cart_icon.dart';
import '../../../../features/auth/presentation/providers/auth_user_state.dart';
import '../../../../features/notification/presentation/providers/notification_providers.dart';

/// Header component for home screen.
///
/// Displays brand identity and greeting on the left,
/// cart and notification icons on the right. No app bar - relaxed design.
class HomeHeader extends ConsumerWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(currentUserProvider);
    final unreadCountAsync = user == null
        ? const AsyncValue<int>.data(0)
        : ref.watch(unreadNotificationsCountProvider);
    final unreadCount = unreadCountAsync.maybeWhen(
      data: (count) => count,
      orElse: () => 0,
    );

    return Container(
      padding: EdgeInsets.fromLTRB(
        AppSizes.lg,
        AppSizes.md,
        AppSizes.lg,
        AppSizes.md,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Left side: Brand and greeting
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                // Brand name with custom font - white for premium surface
                Text(
                  AppTexts.appName,
                  style: TextStyle(
                    fontFamily: 'Cera Pro',
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: AppColors.white,
                    letterSpacing: 0.5,
                  ),
                ),
                SizedBox(height: AppSizes.xs / 2),
                // Greeting with user name - white with slight opacity
                Text(
                  '${_getGreeting()}, ${user?.name.split(' ').first ?? AppTexts.guest}',
                  style: AppTextStyles.bodySmall.copyWith(
                    color: AppColors.white.withValues(alpha: 0.85),
                    fontStyle: FontStyle.italic,
                    fontFamily: 'Griffin',
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          // Right side: Cart and Notification icons - white for premium surface
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Notification icon with badge
              GestureDetector(
                onTap: () async {
                  await AuthGuardHelper.requireAuthOrShowDialog(
                    context: context,
                    ref: ref,
                    onAuthenticated: () {
                      context.push(RouteName.notifications);
                    },
                  );
                },
                child: (() {
                  final icon = Padding(
                    padding: EdgeInsets.all(AppSizes.sm),
                    child: Icon(
                      Icons.notifications_outlined,
                      color: AppColors.white,
                      size: AppSizes.iconSize,
                    ),
                  );

                  if (unreadCount <= 0) return icon;

                  return Badge.count(
                    count: unreadCount,
                    maxCount: 99,
                    backgroundColor: AppColors.white,
                    textColor: AppColors.primary,
                    offset: const Offset(0, 0),
                    child: icon,
                  );
                })(),
              ),
              // Cart icon with badge and animation
              AnimatedCartIcon(
                screenId: 'home',
                onTap: () async {
                  await AuthGuardHelper.requireAuthOrShowDialog(
                    context: context,
                    ref: ref,
                    onAuthenticated: () {
                      context.go(RouteName.cart);
                    },
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Returns greeting based on time of day.
  String _getGreeting() {
    final hour = DateTime.now().hour;
    if (hour < 12) {
      return AppTexts.goodMorning;
    } else if (hour < 17) {
      return AppTexts.goodAfternoon;
    } else {
      return AppTexts.goodEvening;
    }
  }
}
