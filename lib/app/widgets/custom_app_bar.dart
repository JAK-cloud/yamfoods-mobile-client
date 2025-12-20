import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../theme/app_colors.dart';
import '../theme/app_text_styles.dart';

/// Custom app bar widget with proper status bar handling.
///
/// Provides a consistent, aesthetic app bar design across the app.
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;
  final Widget? leading;
  final bool centerTitle;

  const CustomAppBar({
    super.key,
    required this.title,
    this.actions,
    this.leading,
    this.centerTitle = true,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.background,
      elevation: 0,
      systemOverlayStyle: SystemUiOverlayStyle.dark,
      leading: leading,
      actions: actions,
      centerTitle: centerTitle,
      title: Text(title, style: AppTextStyles.h3),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
