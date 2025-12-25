import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_sizes.dart';
import '../../../../app/theme/app_text_styles.dart';
import '../../../../core/providers/core_providers.dart';
import '../../../../core/utils/image_url_builder.dart';
import '../../domain/entities/product.dart';
import '../../domain/entities/product_image.dart';
import '../../domain/extensions/product_pricing_extensions.dart';

/// Product card widget for displaying product information.
///
/// Shows product image, name, description, price, discount badge,
/// rating, and review count in a card layout.
class ProductCard extends ConsumerWidget {
  final Product product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final envConfig = ref.watch(envConfigProvider);
    final mainImage = _getMainImage();
    final imageUrl = mainImage != null
        ? ImageUrlBuilder.build(
            baseUrl: envConfig.baseUrl,
            imagePath: mainImage.url,
          )
        : null;

    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(AppSizes.radius),
        boxShadow: [
          BoxShadow(
            color: AppColors.grey.withValues(alpha: 0.1),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Product image
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(AppSizes.radius),
                topRight: Radius.circular(AppSizes.radius),
              ),
              child: Stack(
                children: [
                  imageUrl != null
                      ? CachedNetworkImage(
                          imageUrl: imageUrl,
                          width: double.infinity,
                          fit: BoxFit.cover,
                          placeholder: (context, url) => Container(
                            width: double.infinity,
                            color: AppColors.primary.withValues(alpha: 0.1),
                            child: Center(
                              child: Icon(
                                Icons.fastfood_outlined,
                                color: AppColors.primary,
                                size: 40,
                              ),
                            ),
                          ),
                          errorWidget: (context, url, error) => Container(
                            width: double.infinity,
                            color: AppColors.primary.withValues(alpha: 0.1),
                            child: Center(
                              child: Icon(
                                Icons.fastfood_outlined,
                                color: AppColors.primary,
                                size: 40,
                              ),
                            ),
                          ),
                        )
                      : Container(
                          width: double.infinity,
                          color: AppColors.primary.withValues(alpha: 0.1),
                          child: Center(
                            child: Icon(
                              Icons.fastfood_outlined,
                              color: AppColors.primary,
                              size: 40,
                            ),
                          ),
                        ),
                  // Discount badge overlay
                  if (product.hasDiscount)
                    Positioned(
                      top: AppSizes.xs,
                      right: AppSizes.xs,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: AppSizes.xs,
                          vertical: 2,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.error,
                          borderRadius: BorderRadius.circular(
                            AppSizes.radiusSm,
                          ),
                        ),
                        child: Text(
                          '${product.discountPercent.round()}% OFF',
                          style: AppTextStyles.caption.copyWith(
                            color: AppColors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
          // Product details
          Padding(
            padding: EdgeInsets.all(AppSizes.md),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                // Product name
                Text(
                  product.name,
                  style: AppTextStyles.bodyLarge.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: AppSizes.sm),
                // Rating and reviews
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: AppSizes.xs,
                        vertical: 2,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.warning.withValues(alpha: 0.1),
                        borderRadius: BorderRadius.circular(AppSizes.radiusSm),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.star, color: AppColors.warning, size: 14),
                          SizedBox(width: 2),
                          Text(
                            _formatRating(product.averageRating),
                            style: AppTextStyles.caption.copyWith(
                              color: AppColors.warning,
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: AppSizes.xs),
                    Text(
                      '(${product.reviewCount})',
                      style: AppTextStyles.caption.copyWith(
                        color: AppColors.txtSecondary.withValues(alpha: 0.6),
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: AppSizes.sm),
                // Price section
                _buildPriceSection(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Gets the main product image (where isMain is true).
  ///
  /// Returns the image with isMain: true if available,
  /// otherwise returns the first image as fallback.
  /// Returns null only if there are no images at all.
  ProductImage? _getMainImage() {
    if (product.imageUrls.isEmpty) {
      return null;
    }

    // Try to find main image first
    try {
      return product.imageUrls.firstWhere((image) => image.isMain);
    } catch (e) {
      // No main image found, return first image as fallback
      return product.imageUrls.first;
    }
  }

  /// Formats rating to show only 1 decimal place.
  String _formatRating(String rating) {
    try {
      final ratingValue = double.parse(rating);
      return ratingValue.toStringAsFixed(1);
    } catch (e) {
      return '0.0';
    }
  }

  /// Builds the price section with discount handling.
  Widget _buildPriceSection() {
    if (product.hasDiscount) {
      final originalPrice = product.originalPriceValue;
      final discountedPrice = product.discountedPriceValue;

      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Price section (discounted + original)
          Row(
            children: [
              // Discounted price
              Text(
                '\$${discountedPrice.toStringAsFixed(2)}',
                style: AppTextStyles.h4.copyWith(
                  color: AppColors.primary,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(width: AppSizes.xs),
              // Original price with line-through
              Text(
                '\$${originalPrice.toStringAsFixed(2)}',
                style: AppTextStyles.bodySmall.copyWith(
                  color: AppColors.txtSecondary.withValues(alpha: 0.5),
                  decoration: TextDecoration.lineThrough,
                  fontSize: 12,
                ),
              ),
            ],
          ),
          // Add to cart button
          Container(
            padding: EdgeInsets.all(AppSizes.xs),
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.circular(AppSizes.radiusSm),
            ),
            child: Icon(Icons.add, color: AppColors.white, size: 18),
          ),
        ],
      );
    } else {
      // No discount - show regular price with add to cart button
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Regular price
          Text(
            '\$${product.price}',
            style: AppTextStyles.h4.copyWith(
              color: AppColors.primary,
              fontWeight: FontWeight.w700,
            ),
          ),
          // Add to cart button
          Container(
            padding: EdgeInsets.all(AppSizes.xs),
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.circular(AppSizes.radiusSm),
            ),
            child: Icon(Icons.add, color: AppColors.white, size: 18),
          ),
        ],
      );
    }
  }
}
