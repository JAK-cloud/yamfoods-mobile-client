import 'package:flutter/material.dart';

import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_sizes.dart';
import '../../../../app/theme/app_text_styles.dart';
import '../../../../core/errors/failure.dart';
import '../../../../core/errors/failure_mapper.dart';

/// Reusable error widget that displays error information with retry functionality.
///
/// Uses the current [Failure] class structure and [FailureMapper] extension
/// to display user-friendly error messages.
class ErrorWidgett extends StatelessWidget {
  final String title;
  final Failure failure;
  final VoidCallback onRetry;
  final IconData? icon;

  const ErrorWidgett({
    super.key,
    required this.title,
    required this.failure,
    required this.onRetry,
    this.icon = Icons.error_outline,
  });

  @override
  Widget build(BuildContext context) {
    // Use FailureMapper extension to get user-friendly message
    final message = failure.toUserMessage();

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(AppSizes.xl),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 64, color: AppColors.error),
            const SizedBox(height: AppSizes.lg),
            Text(
              title,
              style: AppTextStyles.h4.copyWith(color: AppColors.error),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: AppSizes.sm),
            Text(
              message,
              style: AppTextStyles.bodyMedium.copyWith(
                color: AppColors.txtSecondary,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: AppSizes.xl),
            ElevatedButton(
              onPressed: onRetry,
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.btnPrimary,
                foregroundColor: AppColors.white,
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSizes.xl,
                  vertical: AppSizes.md,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppSizes.radius),
                ),
              ),
              child: Text('Retry', style: AppTextStyles.buttonMedium),
            ),
          ],
        ),
      ),
    );
  }
}
