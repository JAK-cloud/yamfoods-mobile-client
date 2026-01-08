import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../app/components/custom_button.dart';
import '../../../../app/components/error_widget.dart';
import '../../../../app/routes/route_names.dart';
import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_sizes.dart';
import '../../../../app/theme/app_text_styles.dart';
import '../../../../core/errors/failure.dart';
import '../../../address/presentation/providers/address_events.dart';
import '../../../address/presentation/providers/address_notifier.dart';
import '../providers/checkout_notifier.dart';
import 'address_selection_bottom_sheet.dart';
import 'checkout_address_card.dart';

/// Address selection section for checkout.
///
/// Shows address card if address is selected, or "Add Address" button if no addresses.
/// Only visible when order type is "delivery".
/// Auto-selects first address when addresses are available.
class AddressSection extends ConsumerWidget {
  final int branchId;

  const AddressSection({super.key, required this.branchId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final checkoutState = ref.watch(checkoutProvider(branchId));
    final addressAsync = ref.watch(addressProvider);

    // Listen for address creation events to auto-select new address
    ref.listen<AddressUiEvent?>(addressUiEventsProvider, (prev, next) {
      if (next == null) return;
      if (next is AddressCreated) {
        // Auto-select the newly created address
        ref
            .read(checkoutProvider(branchId).notifier)
            .selectAddress(next.entity);
      }
    });

    // Only show when delivery is selected
    if (checkoutState.orderType != 'delivery') {
      return const SizedBox.shrink();
    }

    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: AppSizes.sm,
        vertical: AppSizes.xs,
      ),
      padding: EdgeInsets.all(AppSizes.sm),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(AppSizes.radius),
        boxShadow: [
          BoxShadow(
            color: AppColors.grey.withValues(alpha: 0.1),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Delivery Address',
            style: AppTextStyles.bodyLarge.copyWith(
              fontWeight: FontWeight.w600,
              color: AppColors.txtPrimary,
            ),
          ),
          SizedBox(height: AppSizes.sm),
          addressAsync.when(
            data: (addresses) {
              // If no addresses, show add address button
              if (addresses.isEmpty) {
                return CustomButton(
                  text: 'Add Address',
                  onPressed: () => _handleAddAddress(context),
                  height: 44,
                );
              }

              // Show address card with selected address or first address
              final addressToShow =
                  checkoutState.selectedAddress ?? addresses.first;
              return CheckoutAddressCard(
                address: addressToShow,
                onChange: () => _handleAddressChange(context, ref),
              );
            },
            loading: () => const Center(
              child: Padding(
                padding: EdgeInsets.all(AppSizes.lg),
                child: CircularProgressIndicator(),
              ),
            ),
            error: (error, stackTrace) => ErrorWidgett(
              icon: Icons.error_outline,
              title: 'Error loading addresses',
              failure: error is Failure
                  ? error
                  : Failure.unexpected(message: error.toString()),
              onRetry: () => ref.invalidate(addressProvider),
            ),
          ),
        ],
      ),
    );
  }

  void _handleAddressChange(BuildContext context, WidgetRef ref) {
    AddressSelectionBottomSheet.show(context, branchId);
  }

  void _handleAddAddress(BuildContext context) {
    context.push(RouteName.createOrUpdateAddress);
  }
}
