import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../../app/routes/route_names.dart';
import '../../../../../app/theme/app_colors.dart';
import '../../../../../app/theme/app_sizes.dart';
import '../../../../../features/cart/presentation/widgets/animated_cart_icon.dart';

/// Premium header for the product detail screen.
///
/// Features a Cupertino back button and a cart icon with badge.
class ProductDetailHeader extends ConsumerWidget {
  const ProductDetailHeader({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSizes.lg,
        vertical: AppSizes.md,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Back Button
          GestureDetector(
            onTap: () => context.pop(),
            child: _buildButton(
              child: Icon(Icons.chevron_left, color: AppColors.white, size: 24),
            ),
          ),

          // Cart icon with badge and animation
          _buildButton(
            child: AnimatedCartIcon(
              screenId: 'productDetail',
              iconSize: 24,
              padding: const EdgeInsets.all(AppSizes.sm),
              badgeOffset: const Offset(10, -10),
              onTap: () {
                context.go(RouteName.cart);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildButton({required Widget child}) {
    return Container(
      padding: const EdgeInsets.all(AppSizes.sm + 2),
      decoration: BoxDecoration(
        color: AppColors.white.withValues(alpha: 0.2),
        shape: BoxShape.circle,
        border: Border.all(
          color: AppColors.white.withValues(alpha: 0.1),
          width: 1,
        ),
      ),
      child: child,
    );
  }
}
