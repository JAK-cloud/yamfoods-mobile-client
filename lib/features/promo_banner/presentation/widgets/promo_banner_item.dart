import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../app/routes/route_names.dart';
import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_sizes.dart';
import '../../../../app/theme/app_text_styles.dart';
import '../../../../app/theme/app_texts.dart';
import '../../../../core/constants/api_urls.dart';
import '../../../../core/utils/date_formatter.dart';
import '../../../../core/utils/image_url_builder.dart';
import '../../domain/entities/promo_banner.dart';

/// Individual promo banner item widget.
///
/// Displays banner image with overlay content including:
/// - Title and subtitle (fully visible, never cropped)
/// - "Order Now" button (if productId exists)
/// - Date range (if productId exists)
///
/// Features:
/// - Flexible layout that adapts to content size
/// - Text never gets cropped - shows full title and subtitle
/// - Modern gradient overlay for optimal text readability
/// - Responsive design that works with varying content lengths
class PromoBannerItem extends ConsumerWidget {
  final PromoBanner banner;

  const PromoBannerItem({super.key, required this.banner});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final imageUrl = ImageUrlBuilder.build(
      baseUrl: ApiUrls.getPortalImageBaseUrl(),
      imagePath: banner.imageUrl,
    );

    void onTap() {
      if (banner.productId != null) {
        context.push(RouteName.productDetail, extra: banner.productId);
      }
    }

    final hasAction = banner.productId != null;
    final hasSubtitle = banner.subtitle != null && banner.subtitle!.isNotEmpty;

    return GestureDetector(
      onTap: hasAction ? onTap : null,
      child: Container(
        width: double.infinity,
        height: AppSizes.bannerHeight,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSizes.radius),
          boxShadow: [
            BoxShadow(
              color: AppColors.grey.withValues(alpha: 0.15),
              blurRadius: 12,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(AppSizes.radius),
          child: Stack(
            children: [
              // Banner image with proper caching - loads once and reuses cache
              Positioned.fill(
                child: imageUrl.isNotEmpty
                    ? CachedNetworkImage(
                        key: ValueKey(imageUrl),
                        imageUrl: imageUrl,
                        fit: BoxFit.cover,
                        memCacheWidth: (MediaQuery.of(context).size.width * 2)
                            .round(),
                        memCacheHeight: (AppSizes.bannerHeight * 2).round(),
                        maxWidthDiskCache: 2000,
                        maxHeightDiskCache: 1000,
                        fadeInDuration: const Duration(milliseconds: 200),
                        fadeOutDuration: const Duration(milliseconds: 100),
                        placeholderFadeInDuration: const Duration(
                          milliseconds: 150,
                        ),
                        useOldImageOnUrlChange: true,
                        placeholder: (context, url) => Container(
                          color: AppColors.primary.withValues(alpha: 0.1),
                          child: const Center(
                            child: CircularProgressIndicator(strokeWidth: 2),
                          ),
                        ),
                        errorWidget: (context, url, error) => Container(
                          color: AppColors.primary.withValues(alpha: 0.1),
                          child: const Center(
                            child: Icon(
                              Icons.image_not_supported_outlined,
                              size: 48,
                              color: AppColors.txtSecondary,
                            ),
                          ),
                        ),
                      )
                    : Container(
                        color: AppColors.primary.withValues(alpha: 0.1),
                        child: const Center(
                          child: Icon(
                            Icons.image_not_supported_outlined,
                            size: 48,
                            color: AppColors.txtSecondary,
                          ),
                        ),
                      ),
              ),
              // Gradient overlay for text readability
              Positioned.fill(
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        Colors.black.withValues(alpha: 0.3),
                        Colors.black.withValues(alpha: 0.7),
                      ],
                      stops: const [0.3, 0.6, 1.0],
                    ),
                  ),
                ),
              ),
              // Content Column with title, subtitle, and action
              SafeArea(
                minimum: EdgeInsets.all(AppSizes.md),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    // Text content section - expands to show all text
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          // Title - flexible to adjust and fit available space
                          Flexible(
                            child: Text(
                              banner.title,
                              style: AppTextStyles.h3.copyWith(
                                color: AppColors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                                height: 1.25,
                                shadows: [
                                  Shadow(
                                    color: Colors.black.withValues(alpha: 0.7),
                                    blurRadius: 6,
                                    offset: const Offset(0, 2),
                                  ),
                                ],
                              ),
                              maxLines: hasAction ? 3 : 4,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          // Subtitle (if available) - flexible to adjust and fit available space
                          if (hasSubtitle) ...[
                            SizedBox(height: AppSizes.xs),
                            Flexible(
                              child: Text(
                                banner.subtitle!,
                                style: AppTextStyles.bodyMedium.copyWith(
                                  color: AppColors.white.withValues(
                                    alpha: 0.95,
                                  ),
                                  fontSize: 12,
                                  height: 1.4,
                                  shadows: [
                                    Shadow(
                                      color: Colors.black.withValues(
                                        alpha: 0.7,
                                      ),
                                      blurRadius: 6,
                                      offset: const Offset(0, 2),
                                    ),
                                  ],
                                ),
                                maxLines: hasAction ? 2 : 3,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ],
                      ),
                    ),
                    // Bottom action section (date + button) - fixed at bottom
                    if (hasAction) ...[
                      SizedBox(height: AppSizes.sm),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // Date range badge
                          Flexible(
                            flex: 2,
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: AppSizes.sm,
                                vertical: 6,
                              ),
                              decoration: BoxDecoration(
                                color: AppColors.white.withValues(alpha: 0.25),
                                borderRadius: BorderRadius.circular(
                                  AppSizes.radiusSm,
                                ),
                                border: Border.all(
                                  color: AppColors.white.withValues(alpha: 0.4),
                                  width: 1,
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    Icons.calendar_today_outlined,
                                    size: 11,
                                    color: AppColors.white,
                                  ),
                                  SizedBox(width: AppSizes.xs),
                                  Flexible(
                                    child: Text(
                                      DateFormatter.formatDateRange(
                                        banner.startDate,
                                        banner.endDate,
                                      ),
                                      style: AppTextStyles.caption.copyWith(
                                        color: AppColors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 10,
                                      ),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: AppSizes.sm),
                          // Order Now button
                          Flexible(
                            flex: 1,
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: AppSizes.md,
                                vertical: 7,
                              ),
                              decoration: BoxDecoration(
                                color: AppColors.primary,
                                borderRadius: BorderRadius.circular(
                                  AppSizes.radius,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: AppColors.primary.withValues(
                                      alpha: 0.4,
                                    ),
                                    blurRadius: 8,
                                    offset: const Offset(0, 4),
                                  ),
                                ],
                              ),
                              child: Text(
                                AppTexts.orderNow,
                                style: AppTextStyles.buttonMedium.copyWith(
                                  color: AppColors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12,
                                ),
                                textAlign: TextAlign.center,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
