import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_sizes.dart';
import '../../domain/entities/product.dart';
import '../widgets/detail/product_cart_bottom_sheet.dart';
import '../widgets/detail/product_description_section.dart';
import '../widgets/detail/product_detail_header.dart';
import '../widgets/detail/product_image_carousel_modern.dart';
import '../widgets/detail/product_info_section.dart';
import '../widgets/detail/product_ingredients_section.dart';
import '../widgets/detail/product_nutrition_panel.dart';
import '../widgets/detail/product_related_section.dart';
import '../widgets/detail/product_reviews_section.dart';

/// Product detail screen displaying full product information.
///
/// Features a premium cup-like curved header design with
/// elegant transitions and modular widget composition.
class ProductDetailScreen extends ConsumerWidget {
  final Product product;

  const ProductDetailScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: AppColors.background,
      extendBody: false,
      body: SafeArea(
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            // Image Hero Section
            SliverToBoxAdapter(
              child: Stack(
                children: [
                    // Curved background and carousel
                  // Container(
                  //   padding: const EdgeInsets.only(top: 28),
                  //   height: 330,
                  //   decoration: const BoxDecoration(
                  //     color: AppColors.primary,
                  //     borderRadius: BorderRadius.only(
                  //       bottomLeft: Radius.circular(200),
                  //       bottomRight: Radius.circular(200),
                  //     ),
                  //   ),
                  //   child: ProductImageCarousel(images: product.imageUrls),
                  // ),
                  // Modern full-width image carousel with rounded bottom corners
                  ProductImageCarouselModern(images: product.imageUrls),

                  // Floating Header
                  const ProductDetailHeader(),
                ],
              ),
            ),

            SliverToBoxAdapter(child: const SizedBox(height: AppSizes.xl)),

            // Product Info (name, rating, price)
            SliverToBoxAdapter(child: ProductInfoSection(product: product)),

            SliverToBoxAdapter(child: const SizedBox(height: AppSizes.lg)),

            // Nutrition/Calories (quick stat right after price)
            SliverToBoxAdapter(
              child: ProductNutritionPanel(nutrition: product.nutrition),
            ),

            SliverToBoxAdapter(child: const SizedBox(height: AppSizes.xxl)),

            // Description
            SliverToBoxAdapter(
              child: ProductDescriptionSection(
                description: product.description,
              ),
            ),

            SliverToBoxAdapter(child: const SizedBox(height: AppSizes.xl)),

            // Ingredients
            SliverToBoxAdapter(
              child: ProductIngredientsSection(
                ingredients: product.ingredients,
              ),
            ),

            SliverToBoxAdapter(child: const SizedBox(height: AppSizes.xxl)),

            // Related Products
            SliverToBoxAdapter(
              child: ProductRelatedSection(
                productId: product.id,
                branchId: product.branchId,
                categoryId: product.categoryId,
                subCategoryId: product.subCategoryId,
              ),
            ),

            SliverToBoxAdapter(child: const SizedBox(height: AppSizes.xxl)),

            // Reviews
            SliverToBoxAdapter(
              child: ProductReviewsSection(productId: product.id),
            ),

            // Bottom padding for scroll (space for bottom sheet)
            const SliverToBoxAdapter(child: SizedBox(height: 100)),
          ],
        ),
      ),
      bottomSheet: ProductCartBottomSheet(product: product),
    );
  }
}
