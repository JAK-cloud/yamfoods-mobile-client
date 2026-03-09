import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:yamfoods_customer_app/features/profile/presentation/widgets/menu_item.dart';

import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_sizes.dart';

/// Menu section with title and list of menu items
class ProfileMenu extends StatelessWidget {
  final List<MenuItem> items;
  final String? sectionTitle;

  const ProfileMenu({super.key, required this.items, this.sectionTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(AppSizes.radiusLg),
            boxShadow: [
              BoxShadow(
                color: AppColors.primary.withValues(alpha: 0.06),
                blurRadius: 16,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (sectionTitle != null) ...[
                Padding(
                  padding: const EdgeInsets.fromLTRB(AppSizes.lg, AppSizes.lg, AppSizes.lg, AppSizes.xs),
                  child: Text(
                    sectionTitle!,
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: AppColors.primary,
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
                Divider(height: 1, color: AppColors.grey.withValues(alpha: 0.15)),
              ],
              ...items.asMap().entries.map((entry) {
              final isLast = entry.key == items.length - 1;
              return Column(
                children: [
                  entry.value,
                  if (!isLast)
                    Divider(
                      height: 1,
                      indent: 56,
                      endIndent: AppSizes.lg,
                      color: AppColors.grey.withValues(alpha: 0.15),
                    ),
                ],
              );
            }).toList(),
            ],
          ),
        )
        .animate()
        .fadeIn(duration: 400.ms, delay: 100.ms)
        .slideY(begin: 0.1, end: 0);
  }
}
