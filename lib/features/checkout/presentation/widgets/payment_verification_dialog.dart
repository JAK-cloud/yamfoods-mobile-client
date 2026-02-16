import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lottie/lottie.dart';

import '../../../../app/components/custom_button.dart';
import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_images.dart';
import '../../../../app/theme/app_sizes.dart';
import '../../../../app/theme/app_text_styles.dart';
import '../../../../core/enums/payment_status.dart';
import '../../../order/domain/entities/query_order_request.dart';
import '../../../order/domain/entities/order_payment_query_result.dart';
import '../../../order/presentation/providers/order_providers.dart';

/// Dialog shown when verifying payment status after user leaves payment screen.
///
/// Watches [queryOrderProvider] and handles:
/// - **Loading:** "We are processing your payment" with Lottie. Undismissible.
/// - **Data (completed):** Calls [onSuccess], then dismisses.
/// - **Data (failed) / Error:** Shows Retry and Skip buttons. Retry refetches.
///   Skip dismisses without calling [onSuccess].
///
/// **Riverpod refetch and loading:** When Retry calls [ref.invalidate], the provider
/// refetches but [AsyncValue] can keep the previous type (e.g. [AsyncError]) and set
/// [AsyncValue.isLoading] to true during refetch. [.when()] only matches on the
/// *type* (loading/data/error), so it keeps showing the error branch. We show
/// loading whenever [async.isLoading] is true so that refetch shows the loading UI.
///
/// Use [PaymentVerificationDialog.show] to display with correct barrier options.
class PaymentVerificationDialog extends ConsumerWidget {
  const PaymentVerificationDialog({
    super.key,
    required this.request,
    required this.onSuccess,
  });

  final QueryOrderRequest request;
  final void Function(int orderId) onSuccess;

  /// Shows the payment verification dialog. Undismissible until backend returns.
  static Future<void> show(
    BuildContext context, {
    required QueryOrderRequest request,
    required void Function(int orderId) onSuccess,
  }) {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (ctx) =>
          PaymentVerificationDialog(request: request, onSuccess: onSuccess),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final async = ref.watch(queryOrderProvider(request));

    return PopScope(
      canPop: false,
      child: Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSizes.radiusLg),
        ),
        child: async.isLoading
            ? _buildLoadingContent(context)
            : async.when(
                data: (result) => _buildResultContent(context, ref, result),
                loading: () => _buildLoadingContent(context),
                error: (error, _) => _buildErrorContent(context, ref),
              ),
      ),
    );
  }

  Widget _buildLoadingContent(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSizes.sm),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Lottie.asset(
            AppImages.processPaymentAnime,
            width: 300,
            height: 300,
            fit: BoxFit.contain,
            repeat: true,
          ),
          const SizedBox(height: AppSizes.sm),
          Text(
            'We are processing your payment, Please wait...',
            style: AppTextStyles.h6.copyWith(color: AppColors.txtPrimary),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: AppSizes.lg),
        ],
      ),
    );
  }

  Widget _buildResultContent(
    BuildContext context,
    WidgetRef ref,
    OrderPaymentQueryResult result,
  ) {
    if (result.status == PaymentStatus.completed) {
      Navigator.of(context).pop();
      WidgetsBinding.instance.addPostFrameCallback((_) {
        onSuccess(request.orderId);
      });
      // Keep showing loading so we don't flash white before pop takes effect
      return _buildLoadingContent(context);
    }

    return _buildErrorContent(context, ref);
  }

  Widget _buildErrorContent(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(AppSizes.lg),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Icon(
            Icons.error_outline,
            size: AppSizes.iconSize * 2,
            color: AppColors.error,
          ),
          const SizedBox(height: AppSizes.lg),
          Text(
            'Payment could not be confirmed',
            style: AppTextStyles.h6.copyWith(color: AppColors.txtPrimary),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: AppSizes.sm),
          Text(
            'Please try again or check your orders later.',
            style: AppTextStyles.bodyMedium.copyWith(
              color: AppColors.txtSecondary,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: AppSizes.xl),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: CustomButton(
                  text: 'Retry',
                  onPressed: () => ref.invalidate(queryOrderProvider(request)),
                  icon: Icons.refresh,
                ),
              ),
              const SizedBox(width: AppSizes.sm),
              Expanded(
                child: CustomButton(
                  text: 'Skip',
                  onPressed: () => Navigator.of(context).pop(),
                  color: AppColors.btnSecondary,
                  textColor: AppColors.txtPrimary,
                ),
              ),
            ],
          ),
         
        ],
      ),
    );
  }
}
