import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';

import '../../../../app/routes/route_names.dart';
import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_sizes.dart';
import '../../../auth/domain/entities/user.dart';
import 'logout_button.dart';
import 'menu_item.dart';
import 'profile_info.dart';
import 'profile_menu.dart';

class ProfileContent extends StatelessWidget {
  final User user;
  const ProfileContent({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSizes.sm,
        vertical: AppSizes.lg,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _sectionTitle('Profile Information'),
          const SizedBox(height: AppSizes.sm),
          ProfileInfo(user: user),
          const SizedBox(height: AppSizes.lg),
          _sectionTitle('Account'),
          const SizedBox(height: AppSizes.sm),
          ProfileMenu(
            items: [
              MenuItem(
                icon: Icons.person_outline_rounded,
                title: 'Edit Profile',
                subtitle: 'Update your personal information',
                onTap: () => context.push(RouteName.updateProfile, extra: user),
              ),
              MenuItem(
                icon: Icons.lock_outline_rounded,
                title: 'Change Password',
                subtitle: 'Update your security credentials',
                onTap: () => context.push(RouteName.changePassword),
              ),
              MenuItem(
                icon: Icons.location_on_outlined,
                title: 'Addresses',
                subtitle: 'Manage your addresses',
                onTap: () => context.push(RouteName.addresses),
              ),
            ],
          ),
          const SizedBox(height: AppSizes.lg),
          _sectionTitle('Preferences'),
          const SizedBox(height: AppSizes.sm),
          ProfileMenu(
            items: [
              MenuItem(
                icon: Icons.language_rounded,
                title: 'Language',
                subtitle: 'English',
                onTap: () {},
              ),
              MenuItem(
                icon: Icons.notifications_rounded,
                title: 'Notifications',
                subtitle: 'Manage your notification settings',
                trailing: Switch.adaptive(
                  value: true,
                  onChanged: (val) {},
                  activeThumbColor: AppColors.primary,
                ),
              ),
            ],
          ),

          const SizedBox(height: AppSizes.lg),
          _sectionTitle('Support & Feedback'),
          const SizedBox(height: AppSizes.sm),
          ProfileMenu(
            items: [
              MenuItem(
                icon: Icons.help_outline_rounded,
                title: 'Help Center',
                subtitle: 'Get help and support',
                onTap: () {},
              ),
              MenuItem(
                icon: Icons.thumb_up_alt_outlined,
                title: 'Rate Yam Ride',
                subtitle: 'Love the app? Rate us!',
                onTap: () {},
              ),
              MenuItem(
                icon: Icons.feedback_outlined,
                title: 'Send Feedback',
                subtitle: 'Help us improve',
                onTap: () {},
              ),
            ],
          ),
          const SizedBox(height: AppSizes.lg),
          _sectionTitle('Legal & Information'),
          const SizedBox(height: AppSizes.sm),
          ProfileMenu(
            items: [
              MenuItem(
                icon: Icons.description_outlined,
                title: 'Terms & Services',
                subtitle: 'Read our terms of service',
                onTap: () {},
              ),
              MenuItem(
                icon: Icons.info_outline_rounded,
                title: 'About Us',
                subtitle: 'App version 1.0.0',
                onTap: () {},
              ),
            ],
          ),
          const SizedBox(height: AppSizes.lg),
          // Logout Button
          LogoutButton()
              .animate()
              .fadeIn(duration: 400.ms, delay: 400.ms)
              .slideY(begin: 0.1, end: 0),
        ],
      ),
    );
  }

  Widget _sectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 6),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w600,
          color: AppColors.primary,
          letterSpacing: 0.5,
        ),
      ),
    );
  }
}
