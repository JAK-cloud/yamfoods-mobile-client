import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../app/components/empty_state.dart';
import '../../../../app/components/skeleton/product_card_skeleton.dart';
import '../../../../app/theme/app_sizes.dart';
import '../../product/presentation/providers/product_providers.dart';
import '../../product/presentation/widgets/product_card.dart';

/// Product grid as Sliver for use in CustomScrollView.
///
/// Returns slivers instead of a scrollable widget, allowing integration
/// into a parent CustomScrollView for unified scrolling.
class ProductSliverGrid extends ConsumerWidget {
  final int branchId;

  const ProductSliverGrid({super.key, required this.branchId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productsAsync = ref.watch(branchProductsProvider(branchId));

    return productsAsync.when(
      data: (products) {
        if (products.isEmpty) {
          return SliverFillRemaining(
            hasScrollBody: false,
            child: EmptyState(
              icon: Icons.fastfood_outlined,
              title: 'No Products Available',
              subtitle: 'There are no products available for this branch.',
            ),
          );
        }

        return SliverPadding(
          padding: EdgeInsets.all(AppSizes.sm),
          sliver: SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: AppSizes.sm,
              mainAxisSpacing: AppSizes.sm,
              childAspectRatio: 0.75,
            ),
            delegate: SliverChildBuilderDelegate(
              (context, index) =>
                  ProductCard(product: products[index], screenId: 'home'),
              childCount: products.length,
            ),
          ),
        );
      },
      loading: () => SliverPadding(
        padding: EdgeInsets.all(AppSizes.sm),
        sliver: SliverGrid(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: AppSizes.sm,
            mainAxisSpacing: AppSizes.sm,
            childAspectRatio: 0.75,
          ),
          delegate: SliverChildBuilderDelegate(
            (context, index) => const ProductCardSkeleton(),
            childCount: 6,
          ),
        ),
      ),
      error: (error, stackTrace) => SliverPadding(
        padding: EdgeInsets.all(AppSizes.sm),
        sliver: SliverGrid(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: AppSizes.sm,
            mainAxisSpacing: AppSizes.sm,
            childAspectRatio: 0.75,
          ),
          delegate: SliverChildBuilderDelegate(
            (context, index) => const ProductCardSkeleton(),
            childCount: 6,
          ),
        ),
      ),
    );
  }
}
