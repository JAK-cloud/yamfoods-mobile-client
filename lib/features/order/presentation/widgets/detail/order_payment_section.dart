import 'package:flutter/material.dart';

import '../../../../../app/theme/app_colors.dart';
import '../../../../../app/theme/app_sizes.dart';
import '../../../../../app/theme/app_text_styles.dart';
import '../../../../../features/order/domain/entities/order_detail.dart';
import 'info_row.dart';
import 'payment_row.dart';

/// Section displaying payment information with complete price breakdown.
class OrderPaymentSection extends StatelessWidget {
  final OrderDetail orderDetail;

  const OrderPaymentSection({super.key, required this.orderDetail});

  @override
  Widget build(BuildContext context) {
    final order = orderDetail.order;
    final payment = orderDetail.payment;

    return Container(
      padding: EdgeInsets.all(AppSizes.lg),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(AppSizes.radius),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.payment_outlined, color: AppColors.primary, size: 20),
              SizedBox(width: AppSizes.sm),
              Text(
                'Payment Details',
                style: AppTextStyles.h5.copyWith(
                  fontWeight: FontWeight.w700,
                  color: AppColors.txtPrimary,
                ),
              ),
            ],
          ),
          SizedBox(height: AppSizes.lg),
          // Price breakdown
          PaymentRow(label: 'Subtotal', amount: order.subtotal),
          if (order.vatTotal != null && order.vatTotal! > 0)
            PaymentRow(label: 'VAT', amount: order.vatTotal!),
          PaymentRow(label: 'Delivery Fee', amount: order.deliveryFee),
          if (order.pointDiscount != null && order.pointDiscount! > 0)
            PaymentRow(
              label: 'Point Discount',
              amount: order.pointDiscount!,
              isDiscount: true,
            ),
          if (order.promoCodeDiscount != null && order.promoCodeDiscount! > 0)
            PaymentRow(
              label: 'Promo Discount',
              amount: order.promoCodeDiscount!,
              isDiscount: true,
            ),
          if (order.discountTotal != null && order.discountTotal! > 0)
            PaymentRow(
              label: 'Discount',
              amount: order.discountTotal!,
              isDiscount: true,
            ),
          Divider(height: AppSizes.lg),
          PaymentRow(
            label: 'Total Amount',
            amount: order.totalAmount,
            isTotal: true,
          ),
          SizedBox(height: AppSizes.lg),
          // Payment info
          InfoRow(
            label: 'Payment Method',
            value: payment.method.toUpperCase(),
            icon: Icons.credit_card,
          ),
          if (payment.transId != null) ...[
            SizedBox(height: AppSizes.sm),
            InfoRow(
              label: 'Transaction ID',
              value: payment.transId!,
              icon: Icons.receipt_long_outlined,
            ),
          ],
          SizedBox(height: AppSizes.sm),
          InfoRow(
            label: 'Payment Date',
            value: _formatPaymentDate(payment.date),
            icon: Icons.calendar_today_outlined,
          ),
        ],
      ),
    );
  }

  String _formatPaymentDate(DateTime date) {
    final months = [
      'Jan',
      'Feb',
      'Mar',
      'Apr',
      'May',
      'Jun',
      'Jul',
      'Aug',
      'Sep',
      'Oct',
      'Nov',
      'Dec',
    ];
    final month = months[date.month - 1];
    final hour = date.hour.toString().padLeft(2, '0');
    final minute = date.minute.toString().padLeft(2, '0');
    return '$month ${date.day}, ${date.year} at $hour:$minute';
  }
}
