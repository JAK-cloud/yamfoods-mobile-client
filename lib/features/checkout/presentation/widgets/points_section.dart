import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../app/components/custom_button.dart';
import '../../../../app/components/input_textfield.dart';
import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_sizes.dart';
import '../../../../app/theme/app_text_styles.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../app_configuration/presentation/providers/app_configuration_providers.dart';
import '../../../achievement/presentation/providers/achievement_providers.dart';
import '../providers/checkout_notifier.dart';

class PointsSection extends ConsumerStatefulWidget {
  final int branchId;
  const PointsSection({super.key, required this.branchId});

  @override
  ConsumerState<PointsSection> createState() => _PointsSectionState();
}

class _PointsSectionState extends ConsumerState<PointsSection> {
  final TextEditingController _pointsController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _pointsController.dispose();
    super.dispose();
  }

  void _handlePointUse(WidgetRef ref) {
    if (_formKey.currentState!.validate()) {
      final appConfig = ref.read(appConfigurationProvider).value;
      final pointConversionRate = appConfig?.pointConversionRate ?? 0.0;
      ref
          .read(checkoutProvider(widget.branchId).notifier)
          .setPointsToUse(
            int.parse(_pointsController.text),
            pointConversionRate,
          );
    }
  }

  @override
  Widget build(BuildContext context) {
    final checkoutState = ref.watch(checkoutProvider(widget.branchId));
    final pointState = ref.watch(achievementPointProvider);
    final appConfig = ref.watch(appConfigurationProvider).value;
    final minimumPoints = appConfig?.minimumPointsRedemption ?? 10000;

    return pointState.when(
      data: (point) {
        final availablePoints = point.point;

        // Show motivation card if points < minimumPoints
        if (availablePoints < minimumPoints) {
          return _MotivationCard(
            availablePoints: availablePoints,
            minimumPoints: minimumPoints,
          );
        }

        // Show points section if points >= 100
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
              // Header with available points
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Points',
                    style: AppTextStyles.bodyLarge.copyWith(
                      fontWeight: FontWeight.w600,
                      color: AppColors.txtPrimary,
                    ),
                  ),
                  Text(
                    '$availablePoints Pts',
                    style: AppTextStyles.bodyMedium.copyWith(
                      color: AppColors.primary,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SizedBox(height: AppSizes.sm),
              // Input field and Apply button
              Row(
                children: [
                  Expanded(
                    child: Form(
                      key: _formKey,
                      child: InputTextfield(
                        controller: _pointsController,
                        hintText: 'Enter points',
                        icon: Icons.stars_outlined,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return null; // Allow empty, validation on apply
                          }
                          final points = int.tryParse(value);
                          if (points == null) {
                            return 'Must be a number';
                          }
                          if (points < minimumPoints) {
                            return 'Minimum $minimumPoints points';
                          }
                          if (points > availablePoints) {
                            return 'You only have $availablePoints points';
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                  SizedBox(width: AppSizes.xs),
                  CustomButton(
                    text: 'Apply',
                    onPressed: () => _handlePointUse(ref),
                    height: 44,
                    width: 100,
                  ),
                ],
              ),
              // Show discount preview if points are applied
              if (checkoutState.pointUsed != null &&
                  checkoutState.pointDiscount != null) ...[
                SizedBox(height: AppSizes.xs),
                Container(
                  padding: EdgeInsets.all(AppSizes.sm),
                  decoration: BoxDecoration(
                    color: AppColors.primary.withValues(alpha: 0.05),
                    borderRadius: BorderRadius.circular(AppSizes.radius / 2),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.check_circle,
                        size: 18,
                        color: AppColors.primary,
                      ),
                      SizedBox(width: AppSizes.xs),
                      Expanded(
                        child: Text(
                          '${checkoutState.pointUsed} points = ${checkoutState.pointDiscount!.toStringAsFixed(2)} ${AppConstants.currency} discount',
                          style: AppTextStyles.bodySmall.copyWith(
                            color: AppColors.primary,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          _pointsController.clear();
                          ref
                              .read(checkoutProvider(widget.branchId).notifier)
                              .removePoints();
                        },
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                            horizontal: AppSizes.xs,
                          ),
                          minimumSize: Size.zero,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        child: Text(
                          'Remove',
                          style: AppTextStyles.bodySmall.copyWith(
                            color: AppColors.error,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ],
          ),
        );
      },
      error: (error, stackTrace) => const SizedBox.shrink(),
      loading: () => Container(
        margin: EdgeInsets.symmetric(
          horizontal: AppSizes.sm,
          vertical: AppSizes.xs,
        ),
        padding: EdgeInsets.all(AppSizes.sm),
        child: Center(
          child: Text(
            'Loading your reward points...',
            style: AppTextStyles.bodySmall.copyWith(
              color: AppColors.txtSecondary,
              fontWeight: FontWeight.w200,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
    );
  }
}

/// Motivation card shown when user has less than minimum points.
class _MotivationCard extends StatelessWidget {
  final int availablePoints;
  final int minimumPoints;

  const _MotivationCard({
    required this.availablePoints,
    required this.minimumPoints,
  });

  @override
  Widget build(BuildContext context) {
    final pointsNeeded = minimumPoints - availablePoints;

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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Points',
                style: AppTextStyles.bodyLarge.copyWith(
                  fontWeight: FontWeight.w600,
                  color: AppColors.txtPrimary,
                ),
              ),
              Text(
                '$availablePoints Pts',
                style: AppTextStyles.bodyMedium.copyWith(
                  color: AppColors.primary,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          SizedBox(height: AppSizes.sm),
          Container(
            padding: EdgeInsets.all(AppSizes.sm),
            decoration: BoxDecoration(
              color: AppColors.primary.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(AppSizes.radius / 2),
              border: Border.all(
                color: AppColors.primary.withValues(alpha: 0.2),
              ),
            ),
            child: Row(
              children: [
                Icon(Icons.stars_rounded, size: 20, color: AppColors.primary),
                SizedBox(width: AppSizes.xs),
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      style: AppTextStyles.bodySmall.copyWith(
                        color: AppColors.txtPrimary,
                      ),
                      children: [
                        const TextSpan(text: 'You need '),
                        TextSpan(
                          text: '$pointsNeeded more points',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: AppColors.primary,
                          ),
                        ),
                        const TextSpan(
                          text: ' to redeem. Keep ordering to earn points!',
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
