import 'package:flutter/material.dart';

import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_sizes.dart';
import '../../../../app/theme/app_text_styles.dart';
import '../../../../app/widgets/cupertino_back_button.dart';
import '../../domain/entities/category.dart';

class CategoryHeader extends StatelessWidget {
  final Category category;
  final VoidCallback? onSearchTap;

  const CategoryHeader({super.key, required this.category, this.onSearchTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(
        AppSizes.lg,
        MediaQuery.of(context).padding.top + AppSizes.lg,
        AppSizes.lg,
        AppSizes.lg,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CupertinoBackButton(),
          SizedBox(width: AppSizes.sm),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  category.name,
                  style: AppTextStyles.h3,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                if (category.detail.isNotEmpty) ...[
                  SizedBox(height: AppSizes.xs / 2),
                  Text(
                    category.detail,
                    style: AppTextStyles.bodyMedium,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ],
            ),
          ),
          SizedBox(width: AppSizes.md),
          IconButton(
            onPressed: onSearchTap,
            icon: Icon(
              Icons.search,
              color: AppColors.txtPrimary,
              size: AppSizes.iconSize,
            ),
          ),
        ],
      ),
    );
  }
}
