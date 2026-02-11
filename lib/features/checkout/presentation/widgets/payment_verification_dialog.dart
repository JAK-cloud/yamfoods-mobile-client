import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../../../../app/components/custom_button.dart';
import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_sizes.dart';
import '../../../../app/theme/app_text_styles.dart';
import '../../../../core/enums/payment_status.dart';
import '../../../order/domain/entities/query_order_request.dart';
import '../../../order/domain/entities/order_payment_query_result.dart';
import '../../../order/presentation/providers/order_providers.dart';

/// Dialog shown when verifying payment status after user leaves payment screen.
///
/// Watches [queryOrderProvider] and handles:
/// - **Loading:** "We are processing your payment" with icon. Undismissible.
/// - **Data (completed):** Calls [onSuccess], then dismisses.
/// - **Data (failed) / Error:** Shows Retry and Skip buttons. Retry refetches.
///   Skip dismisses without calling [onSuccess].
///
/// Use [PaymentVerificationDialog.show] to display with correct barrier options.
class PaymentVerificationDialog extends ConsumerWidget {
  const PaymentVerificationDialog({
    super.key,
    required this.request,
    required this.onSuccess,
  });

  final QueryOrderRequest request;
  final VoidCallback onSuccess;

  /// Shows the payment verification dialog. Undismissible until backend returns.
  static Future<void> show(
    BuildContext context, {
    required QueryOrderRequest request,
    required VoidCallback onSuccess,
  }) {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (ctx) => PaymentVerificationDialog(
        request: request,
        onSuccess: onSuccess,
      ),
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
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.xl),
          child: async.when(
            data: (result) => _buildResultContent(context, ref, result),
            loading: () => _buildLoadingContent(context),
            error: (error, _) => _buildErrorContent(context, ref),
          ),
        ),
      ),
    );
  }

  Widget _buildLoadingContent(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          Icons.payment,
          size: AppSizes.iconSize * 2,
          color: AppColors.primary,
        ),
        const SizedBox(height: AppSizes.lg),
        Text(
          'We are processing your payment',
          style: AppTextStyles.h6.copyWith(color: AppColors.txtPrimary),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: AppSizes.lg),
        const SpinKitThreeBounce(color: AppColors.primary, size: 32.0),
      ],
    );
  }

  Widget _buildResultContent(
    BuildContext context,
    WidgetRef ref,
    OrderPaymentQueryResult result,
  ) {
    if (result.status == PaymentStatus.completed) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        onSuccess();
      });
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.check_circle,
            size: AppSizes.iconSize * 2,
            color: AppColors.success,
          ),
          const SizedBox(height: AppSizes.lg),
          Text(
            'Payment successful!',
            style: AppTextStyles.h6.copyWith(color: AppColors.txtPrimary),
            textAlign: TextAlign.center,
          ),
        ],
      );
    }

    return _buildErrorContent(context, ref);
  }

  Widget _buildErrorContent(BuildContext context, WidgetRef ref) {
    return Column(
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
          style: AppTextStyles.bodyMedium.copyWith(color: AppColors.txtSecondary),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: AppSizes.xl),
        CustomButton(
          text: 'Retry',
          onPressed: () => ref.invalidate(queryOrderProvider(request)),
          icon: Icons.refresh,
        ),
        const SizedBox(height: AppSizes.sm),
        CustomButton(
          text: 'Skip',
          onPressed: () => Navigator.of(context).pop(),
          color: AppColors.btnSecondary,
          textColor: AppColors.txtPrimary,
        ),
      ],
    );
  }
}
