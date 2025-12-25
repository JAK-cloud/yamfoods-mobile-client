import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../app/routes/route_names.dart';
import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_sizes.dart';
import '../../../../app/theme/app_text_styles.dart';
import '../../category/domain/entities/category.dart';

/// Individual category chip widget.
///
/// Displays a circular category image with name below it.
/// Styled for premium surface with white/semi-transparent colors.
class CategoryChip extends StatelessWidget {
  final Category category;

  const CategoryChip({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push(RouteName.categoryScreen, extra: category);
      },
      child: Container(
        width: 70,
        margin: EdgeInsets.only(right: AppSizes.md),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Category image - white background for premium surface
            Container(
              width: 56,
              height: 56,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.white,
                boxShadow: [
                  BoxShadow(
                    color: AppColors.black.withValues(alpha: 0.1),
                    blurRadius: 8,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: category.imageUrl != null
                  ? ClipOval(
                      child: CachedNetworkImage(
                        imageUrl: category.imageUrl!,
                        width: 56,
                        height: 56,
                        fit: BoxFit.cover,
                        placeholder: (context, url) => Container(
                          color: AppColors.white,
                          child: Icon(
                            Icons.category_outlined,
                            color: AppColors.primary,
                            size: 22,
                          ),
                        ),
                        errorWidget: (context, url, error) => Icon(
                          Icons.category_outlined,
                          color: AppColors.primary,
                          size: 22,
                        ),
                      ),
                    )
                  : Icon(
                      Icons.category_outlined,
                      color: AppColors.primary,
                      size: 22,
                    ),
            ),
            SizedBox(height: AppSizes.xs),
            // Category name - white for premium surface
            Text(
              category.name,
              style: AppTextStyles.bodySmall.copyWith(
                color: AppColors.txtPrimary,
                fontWeight: FontWeight.w500,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
