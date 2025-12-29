import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_sizes.dart';
import '../../promo_banner/presentation/widgets/promo_banner_slider.dart';
import '../widgets/category_chips_list.dart';
import '../widgets/home_header.dart';
import '../widgets/home_search_bar.dart';
import '../widgets/product_sliver_grid.dart';

/// Home screen displaying products organized by category.
///
/// Premium design with fixed header and scrollable content below.
/// Uses CustomScrollView with slivers for optimal performance.
class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            // Fixed header
            Container(
              decoration: const BoxDecoration(color: AppColors.primary),
              child: const HomeHeader(),
            ),

            // Fixed search bar with gradient continuation
            Container(
              padding: EdgeInsets.only(bottom: AppSizes.sm),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    AppColors.primary,
                    AppColors.primary.withValues(alpha: 0.9),
                  ],
                ),
              ),
              child: const HomeSearchBar(),
            ),

            // Scrollable content: banner, categories, and products
            Expanded(
              child: CustomScrollView(
                slivers: [
                  // Premium surface section (banner, categories) with gradient
                  SliverToBoxAdapter(
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            AppColors.primary.withValues(alpha: 0.9),
                            AppColors.background,
                          ],
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const SizedBox(height: 2),
                          // Promo banner slider
                          const PromoBannerSlider(),

                          SizedBox(height: AppSizes.lg),

                          // Category chips list
                          CategoryChipsList(branchId: 2),
                        ],
                      ),
                    ),
                  ),

                  // Product grid - scrolls with content
                  ProductSliverGrid(branchId: 2),

                  // Bottom padding for safe area
                  SliverToBoxAdapter(
                    child: SizedBox(
                      height:
                          MediaQuery.of(context).padding.bottom + AppSizes.lg,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
