import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:yamfoods_customer_app/app/routes/route_names.dart';

import '../../../../app/components/empty_state.dart';
import '../../../../app/components/error_widget.dart';
import '../../../../app/theme/app_sizes.dart';
import '../../../../core/errors/failure.dart';
import '../../domain/entities/cart.dart';
import '../providers/cart_notifier.dart';
import 'cart_card.dart';

class CartList extends ConsumerWidget {
  final AsyncValue<List<Cart>> cartAsync;
  final int branchId;

  const CartList({super.key, required this.cartAsync, required this.branchId});

  /// Calculates bottom padding to ensure last cart item is visible above bottom sheet.
  ///
  /// Accounts for:
  /// - Bottom sheet content height (~280px)
  /// - SafeArea bottom padding
  /// - Extra spacing for comfort
  double _calculateBottomPadding(BuildContext context) {
    final safeAreaBottom = MediaQuery.of(context).padding.bottom;
    // Bottom sheet approximate height: container margins/padding + content + button + spacing
    // Conservative estimate to ensure last item is always visible
    const bottomSheetHeight = 320.0;
    return bottomSheetHeight + safeAreaBottom;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Expanded(
      child: cartAsync.when(
        data: (carts) {
          if (carts.isEmpty) {
            return EmptyState(
              icon: Icons.shopping_cart_outlined,
              title: 'Your cart is empty',
              subtitle: 'Start adding delicious items to your cart',
              actionText: 'Browse Menu',
              onAction: () => context.go(RouteName.home),
            );
          }
          return ListView.builder(
            padding: EdgeInsets.only(
              left: AppSizes.sm,
              right: AppSizes.sm,
              top: AppSizes.sm,
              bottom: _calculateBottomPadding(
                context,
              ), // Dynamic padding for bottom sheet
            ),
            itemCount: carts.length,
            itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.only(
                bottom: index < carts.length - 1
                    ? AppSizes.sm
                    : AppSizes.lg, // Extra space after last item
              ),
              child: CartCard(cart: carts[index], branchId: branchId),
            ),
          );
        },
        error: (error, stack) => ErrorWidgett(
          title: 'Failed to load cart',
          failure: error is Failure
              ? error
              : Failure.unexpected(message: error.toString()),
          onRetry: () {
            ref.read(cartProvider(branchId).notifier).load(branchId);
          },
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
