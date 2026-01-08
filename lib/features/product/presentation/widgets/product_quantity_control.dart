import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_text_styles.dart';
import '../../../../core/providers/animation_providers.dart';
import '../../../../core/snacks/info_snack_bar.dart';
import '../../../cart/domain/entities/cart.dart';
import '../../../cart/presentation/providers/cart_loading_providers.dart';
import '../../../cart/presentation/providers/cart_notifier.dart';

/// Compact quantity control widget for product cards.
///
/// Displays decrease button, quantity, and increase button
/// with premium styling optimized for card layouts.
///
/// **screenId**: Unique identifier for the screen (e.g., 'home', 'productDetail', 'category').
/// This ensures the animation controller matches the screen's cart icon.
///
/// **size**: Optional size variant. Use [QuantityControlSize.large] for bottom sheets
/// and [QuantityControlSize.compact] (default) for product cards.
///
/// **iconColor**: Optional color for icons and borders. Defaults to [AppColors.primary].
/// **textColor**: Optional color for quantity text. Defaults to [AppColors.primary].
class ProductQuantityControl extends ConsumerWidget {
  final Cart cart;
  final int branchId;
  final String screenId;
  final QuantityControlSize size;
  final Color? iconColor;
  final Color? textColor;

  const ProductQuantityControl({
    super.key,
    required this.cart,
    required this.branchId,
    required this.screenId,
    this.size = QuantityControlSize.compact,
    this.iconColor,
    this.textColor,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isUpdating = ref
        .watch(cartQuantityUpdateLoadingProvider)
        .contains(cart.id);

    // Maximum quantity allowed
    const maxQuantity = 5;

    final buttonSize = size == QuantityControlSize.large ? 40.0 : 28.0;
    final iconSize = size == QuantityControlSize.large ? 22.0 : 16.0;
    final quantityWidth = size == QuantityControlSize.large ? 40.0 : 28.0;
    final quantityFontSize = size == QuantityControlSize.large ? 16.0 : 13.0;
    final effectiveIconColor = iconColor ?? AppColors.primary;
    final effectiveTextColor = textColor ?? AppColors.primary;

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Decrease button
        _QuantityButton(
          icon: Icons.remove,
          onTap: isUpdating || cart.quantity <= 1
              ? null
              : () => ref
                    .read(cartProvider(branchId).notifier)
                    .decreaseQuantity(cart.id),
          isDisabled: isUpdating || cart.quantity <= 1,
          buttonSize: buttonSize,
          iconSize: iconSize,
          iconColor: effectiveIconColor,
        ),

        // Quantity display
        Container(
          width: quantityWidth,
          alignment: Alignment.center,
          constraints: BoxConstraints(
            minWidth: quantityWidth,
            maxWidth: quantityWidth,
          ),
          child: Text(
            '${cart.quantity}',
            style: AppTextStyles.h6.copyWith(
              fontWeight: FontWeight.w700,
              color: effectiveTextColor,
              fontSize: quantityFontSize,
            ),
            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),

        // Increase button
        _QuantityButton(
          icon: Icons.add,
          onTap: isUpdating
              ? null
              : cart.quantity >= maxQuantity
              ? () {
                  InfoSnackBar.show(
                    context,
                    message: 'Maximum quantity of $maxQuantity reached',
                  );
                }
              : () {
                  // Trigger same product-to-cart animation on quantity increase
                  // Only if the tag exists (e.g., in product cards, not in bottom sheets)
                  try {
                    final controller = ref.read(
                      cartAnimationControllerProvider(screenId),
                    );
                    controller.animateTag('product_${cart.product.id}');
                  } catch (e) {
                    // Animation tag doesn't exist (e.g., in bottom sheet context)
                    // This is fine, just continue without animation
                  }

                  ref
                      .read(cartProvider(branchId).notifier)
                      .increaseQuantity(cart.id);
                },
          isDisabled: isUpdating || cart.quantity >= maxQuantity,
          buttonSize: buttonSize,
          iconSize: iconSize,
          iconColor: effectiveIconColor,
        ),
      ],
    );
  }
}

/// Size variants for quantity control.
enum QuantityControlSize {
  /// Compact size for product cards (default)
  compact,

  /// Large size for bottom sheets and prominent displays
  large,
}

/// Individual quantity button with circular design.
class _QuantityButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onTap;
  final bool isDisabled;
  final double buttonSize;
  final double iconSize;
  final Color iconColor;

  const _QuantityButton({
    required this.icon,
    this.onTap,
    this.isDisabled = false,
    required this.buttonSize,
    required this.iconSize,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: buttonSize,
        height: buttonSize,
        decoration: BoxDecoration(
          color: isDisabled
              ? AppColors.grey.withValues(alpha: 0.1)
              : iconColor.withValues(alpha: 0.1),
          shape: BoxShape.circle,
          border: Border.all(
            color: isDisabled
                ? AppColors.grey.withValues(alpha: 0.2)
                : iconColor.withValues(alpha: 0.3),
            width: 1,
          ),
        ),
        child: Icon(
          icon,
          size: iconSize,
          color: isDisabled ? AppColors.grey.withValues(alpha: 0.5) : iconColor,
        ),
      ),
    );
  }
}
