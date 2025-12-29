import 'dart:math' as math;

import 'package:animate_to/animate_to.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_sizes.dart';
import '../../../../core/providers/animation_providers.dart';
import '../providers/cart_notifier.dart';

/// Reusable cart icon with badge wrapped in AnimateTo for add-to-cart animations.
///
/// This widget automatically watches the cart provider to get the cart count.
/// It handles:
/// - Fetching cart count from the cart provider
/// - Visualizing the cart icon + badge in a consistent style
/// - Applying the "arrival" bounce animation when items animate to the cart
///
/// **screenId**: Unique identifier for the screen (e.g., 'home', 'productDetail', 'category').
/// This ensures each screen has its own animation controller instance.
///
/// **branchId**: The branch ID to watch cart for. Defaults to 2.
class AnimatedCartIcon extends ConsumerWidget {
  final String screenId;
  final VoidCallback? onTap;
  final double iconSize;
  final EdgeInsets padding;
  final Offset badgeOffset;
  final int branchId;

  const AnimatedCartIcon({
    super.key,
    required this.screenId,
    this.onTap,
    this.iconSize = AppSizes.iconSize,
    this.padding = const EdgeInsets.all(AppSizes.sm),
    this.badgeOffset = Offset.zero,
    this.branchId = 2,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Watch cart provider to get cart count
    final cartAsync = ref.watch(cartProvider(branchId));
    final cartCount = cartAsync.value?.length ?? 0;
    final cartIcon = Padding(
      padding: padding,
      child: Icon(
        Icons.shopping_basket_outlined,
        color: AppColors.white,
        size: iconSize,
      ),
    );

    return GestureDetector(
      onTap: onTap,
      child: AnimateTo<int>(
        controller: ref.watch(cartAnimationControllerProvider(screenId)),
        builder: (context, child, animation) {
          // Bounce animation when an item arrives to the cart.
          return Transform.translate(
            offset: Offset(math.sin(animation.value * 3 * math.pi) * 3, 0),
            child: child,
          );
        },
        child: cartCount > 0
            ? Badge.count(
                count: cartCount,
                maxCount: 99,
                backgroundColor: AppColors.white,
                textColor: Colors.red,
                offset: badgeOffset,
                child: cartIcon,
              )
            : cartIcon,
      ),
    );
  }
}
