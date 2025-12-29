import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yamfoods_customer_app/features/product/domain/extensions/product_pricing_extensions.dart';

import '../../../../app/components/confirmation_dialog.dart';
import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_sizes.dart';
import '../../../../app/theme/app_text_styles.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../../core/providers/core_providers.dart';
import '../../../../core/utils/image_url_builder.dart';
import '../../../product/domain/extensions/product_image_extensions.dart';
import '../../domain/entities/cart.dart';
import '../providers/cart_notifier.dart';
import '../providers/cart_loading_providers.dart';
import 'cart_qty_cntrl.dart';

class CartCard extends ConsumerWidget {
  final Cart cart;
  final int branchId;

  const CartCard({super.key, required this.cart, required this.branchId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final envConfig = ref.watch(envConfigProvider);
    final mainImage = cart.product.getMainImage();
    final imageUrl = mainImage != null
        ? ImageUrlBuilder.build(
            baseUrl: envConfig.baseUrl,
            imagePath: mainImage.url,
          )
        : null;
    final isDeleting = ref.watch(cartDeleteLoadingProvider).contains(cart.id);

    return Container(
      padding: EdgeInsets.all(AppSizes.sm),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(AppSizes.radius),
      ),
      child: Stack(
        children: [
          Row(
            crossAxisAlignment: .start,
            children: [
              //cart product main image
              ClipRRect(
                borderRadius: BorderRadius.all(
                  Radius.circular(AppSizes.radius),
                ),
                child: imageUrl != null
                    ? CachedNetworkImage(
                        imageUrl: imageUrl,
                        width: 90,
                        height: 90,
                        fit: BoxFit.cover,
                        placeholder: (context, url) => Container(
                          width: 100,
                          height: 100,
                          color: AppColors.primary.withValues(alpha: 0.1),
                          child: Center(
                            child: Icon(
                              Icons.fastfood_outlined,
                              color: AppColors.primary,
                              size: 30,
                            ),
                          ),
                        ),
                        errorWidget: (context, url, error) => Container(
                          width: 100,
                          height: 100,
                          color: AppColors.primary.withValues(alpha: 0.1),
                          child: Center(
                            child: Icon(
                              Icons.fastfood_outlined,
                              color: AppColors.primary,
                              size: 30,
                            ),
                          ),
                        ),
                      )
                    : Container(
                        width: 100,
                        height: 100,
                        color: AppColors.primary.withValues(alpha: 0.1),
                        child: Center(
                          child: Icon(
                            Icons.fastfood_outlined,
                            color: AppColors.primary,
                            size: 30,
                          ),
                        ),
                      ),
              ),
              SizedBox(width: AppSizes.sm),
              Expanded(
                child: Column(
                  crossAxisAlignment: .start,
                  children: [
                    Text(
                      cart.product.name,
                      style: AppTextStyles.h5.copyWith(
                        fontWeight: FontWeight.w800,
                        fontSize: 19,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      cart.product.hasDiscount
                          ? '${AppConstants.currency} ${cart.product.discountedPriceValue.toStringAsFixed(2)}'
                          : '${AppConstants.currency} ${double.parse(cart.product.price).toStringAsFixed(2)}',
                      style: AppTextStyles.bodyLarge.copyWith(
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    SizedBox(height: AppSizes.sm),
                    Align(
                      alignment: Alignment.centerRight,
                      child: CartQuantityControlCard(
                        cart: cart,
                        branchId: branchId,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          // Delete button in top right corner
          Positioned(
            top: 0,
            right: 0,
            child: GestureDetector(
              onTap: isDeleting
                  ? null
                  : () => _showDeleteConfirmation(context, ref),
              child: Container(
                padding: EdgeInsets.all(AppSizes.xs),
                decoration: BoxDecoration(
                  color: AppColors.error.withValues(alpha: 0.15),
                  shape: BoxShape.circle,
                ),
                child: isDeleting
                    ? SizedBox(
                        width: 16,
                        height: 16,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          valueColor: const AlwaysStoppedAnimation<Color>(
                            AppColors.error,
                          ),
                        ),
                      )
                    : Icon(Icons.close, color: Colors.red, size: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Shows confirmation dialog before deleting cart item.
  void _showDeleteConfirmation(BuildContext context, WidgetRef ref) {
    ConfirmationDialog.show(
      context: context,
      title: 'Remove Item?',
      message:
          'Are you sure you want to remove ${cart.product.name} from your cart?',
      confirmText: 'Remove',
      cancelText: 'Cancel',
      confirmButtonColor: AppColors.error,
    ).then((confirmed) {
      if (confirmed == true) {
        ref.read(cartProvider(branchId).notifier).deleteCartItem(cart.id);
      }
    });
  }
}
