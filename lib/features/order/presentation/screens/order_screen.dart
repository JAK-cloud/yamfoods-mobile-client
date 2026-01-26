import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../app/components/empty_state.dart';
import '../../../../app/components/error_widget.dart';
import '../../../../app/routes/route_names.dart';
import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_sizes.dart';
import '../../../../core/errors/failure.dart';
import '../providers/order_providers.dart';
import '../widgets/order_card.dart';
import '../widgets/order_header.dart';

/// Order screen displaying user's order history.
///
/// Shows all orders with proper loading, error, and empty states.
/// Each order is displayed in a professional card widget.
class OrderScreen extends ConsumerWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ordersAsync = ref.watch(allOrdersProvider);

    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            // Fixed header
            const OrderHeader(),
            // Scrollable content
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: AppSizes.md),
                child: ordersAsync.when(
                  data: (orders) {
                    if (orders.isEmpty) {
                      return EmptyState(
                        icon: Icons.shopping_bag_outlined,
                        title: 'No orders yet',
                        subtitle:
                            'Your order history will appear here once you place an order',
                        actionText: 'Browse Menu',
                        onAction: () => context.pushReplacement(RouteName.home),
                      );
                    }

                    return RefreshIndicator(
                      onRefresh: () => ref.refresh(allOrdersProvider.future),
                      color: AppColors.primary,
                      child: ListView.separated(
                        itemCount: orders.length,
                        separatorBuilder: (context, index) => Divider(
                          height: 1,
                          thickness: 1,
                          color: AppColors.grey.withValues(alpha: 0.2),
                        ),
                        itemBuilder: (context, index) {
                          return OrderCard(order: orders[index]);
                        },
                      ),
                    );
                  },
                  error: (error, stackTrace) => ErrorWidgett(
                    icon: Icons.error_outline,
                    title: 'Error loading orders',
                    failure: error is Failure
                        ? error
                        : Failure.unexpected(message: error.toString()),
                    onRetry: () => ref.refresh(allOrdersProvider.future),
                  ),
                  loading: () => const Center(
                    child: CircularProgressIndicator(color: AppColors.primary),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
