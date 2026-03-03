import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_sizes.dart';
import '../../../branch/presentation/providers/branch_providers.dart';
import '../providers/cart_notifier.dart';

/// Reusable cart icon with badge.
///
/// This widget automatically watches the cart provider to get the cart count.
/// It handles:
/// - Fetching cart count from the cart provider
/// - Visualizing the cart icon + badge in a consistent style
///
/// Uses the current branch ID from `currentBranchProvider` - guaranteed to exist
/// since branch selection is enforced before navigation.
class AnimatedCartIcon extends ConsumerWidget {
  final VoidCallback? onTap;
  final double iconSize;
  final EdgeInsets padding;
  final Offset badgeOffset;

  const AnimatedCartIcon({
    super.key,
    this.onTap,
    this.iconSize = AppSizes.iconSize,
    this.padding = const EdgeInsets.all(AppSizes.sm),
    this.badgeOffset = Offset.zero,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Get current branch ID - guaranteed to exist since branch selection is enforced
    final branchId = ref.watch(currentBranchProvider)!;
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
      child: SizedBox(
        width: iconSize + padding.horizontal,
        height: iconSize + padding.vertical,
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
