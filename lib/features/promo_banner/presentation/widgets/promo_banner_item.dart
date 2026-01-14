import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_sizes.dart';
import '../../../../app/theme/app_text_styles.dart';
import '../../../../app/theme/app_texts.dart';
import '../../../../core/constants/api_urls.dart';
import '../../../../core/utils/date_formatter.dart';
import '../../../../core/utils/image_url_builder.dart';
import '../../domain/entities/promo_banner.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Individual promo banner item widget.
///
/// Displays banner image with overlay content including:
/// - Title and subtitle
/// - "Order Now" button (if productId exists)
/// - Date range (if productId exists)
class PromoBannerItem extends ConsumerWidget {
  final PromoBanner banner;

  const PromoBannerItem({super.key, required this.banner});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final imageUrl = ImageUrlBuilder.build(
      baseUrl: ApiUrls.getPortalImageBaseUrl(),
      imagePath: banner.imageUrl,
    );

    return Container(
      width: double.infinity,
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
            // Banner image
            Positioned.fill(
              child: imageUrl.isNotEmpty
                  ? CachedNetworkImage(
                      key: ValueKey(
                        imageUrl,
                      ), // Ensure proper widget identity for caching
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
                      useOldImageOnUrlChange:
                          true, // Keep showing cached image during rebuilds
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
                      Colors.black.withValues(alpha: 0.6),
                    ],
                    stops: const [0.4, 1.0],
                  ),
                ),
              ),
            ),
            // Content overlay
            Positioned.fill(
              child: Padding(
                padding: EdgeInsets.fromLTRB(
                  AppSizes.md,
                  AppSizes.md,
                  AppSizes.md,
                  AppSizes.sm, // Reduced bottom padding to prevent overflow
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start, // Always from top
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min, // Prevent overflow
                  children: [
                    // Title - with proper height calculation
                    Flexible(
                      child: Text(
                        banner.title,
                        style: AppTextStyles.h3.copyWith(
                          color: AppColors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          height: 1.2, // Line height for better text rendering
                          shadows: [
                            Shadow(
                              color: Colors.black.withValues(alpha: 0.5),
                              blurRadius: 4,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    // Subtitle (if available)
                    if (banner.subtitle != null &&
                        banner.subtitle!.isNotEmpty) ...[
                      SizedBox(height: AppSizes.xs / 2), // Reduced spacing
                      Flexible(
                        child: Text(
                          banner.subtitle!,
                          style: AppTextStyles.bodyMedium.copyWith(
                            color: AppColors.white.withValues(alpha: 0.9),
                            fontSize: 13,
                            height: 1.3,
                            shadows: [
                              Shadow(
                                color: Colors.black.withValues(alpha: 0.5),
                                blurRadius: 4,
                                offset: const Offset(0, 2),
                              ),
                            ],
                          ),
                          maxLines: 2, // Allow 2 lines
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                    // Spacer to push button/date to bottom when they exist
                    if (banner.productId != null) const Spacer(),
                    // Date range and Order Now button on same row
                    if (banner.productId != null)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // Date range
                          Flexible(
                            flex: 2,
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: AppSizes.sm,
                                vertical: 6,
                              ),
                              decoration: BoxDecoration(
                                color: AppColors.white.withValues(alpha: 0.2),
                                borderRadius: BorderRadius.circular(
                                  AppSizes.radiusSm,
                                ),
                                border: Border.all(
                                  color: AppColors.white.withValues(alpha: 0.3),
                                  width: 1,
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    Icons.calendar_today_outlined,
                                    size: 12,
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
                                vertical: 8,
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
                                  fontSize: 13,
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
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
