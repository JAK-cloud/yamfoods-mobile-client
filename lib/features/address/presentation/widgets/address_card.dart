import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../app/components/confirmation_dialog.dart';
import '../../../../app/routes/route_names.dart';
import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_sizes.dart';
import '../../../../app/theme/app_text_styles.dart';
import '../../domain/entities/address.dart';
import '../providers/address_loading_providers.dart';
import '../providers/address_notifier.dart';

/// Premium address card widget with modern, eye-catching design.
///
/// Features gradient accents, refined shadows, and elegant typography.
/// Excludes technical fields (id, userId, lat, lng) from display.
class AddressCard extends ConsumerWidget {
  final Address address;

  const AddressCard({super.key, required this.address});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDeleting = ref
        .watch(addressDeleteLoadingProvider)
        .contains(address.id);
    final isUpdating = ref
        .watch(addressUpdateLoadingProvider)
        .contains(address.id);

    return Container(
      margin: EdgeInsets.only(bottom: AppSizes.md),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            AppColors.white,
            AppColors.background.withValues(alpha: 0.3),
          ],
        ),
        borderRadius: BorderRadius.circular(AppSizes.radiusLg),
        border: Border.all(
          color: AppColors.primary.withValues(alpha: 0.15),
          width: 1.5,
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.primary.withValues(alpha: 0.12),
            blurRadius: 20,
            offset: const Offset(0, 8),
            spreadRadius: 0,
          ),
          BoxShadow(
            color: AppColors.grey.withValues(alpha: 0.06),
            blurRadius: 6,
            offset: const Offset(0, 2),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Stack(
        children: [
          // Decorative gradient accent
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: 4,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [AppColors.primary, AppColors.primaryLight],
                ),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(AppSizes.radiusLg),
                  topRight: Radius.circular(AppSizes.radiusLg),
                ),
              ),
            ),
          ),
          // Main content
          Padding(
            padding: EdgeInsets.all(AppSizes.lg),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildLocationIcon(),
                    SizedBox(width: AppSizes.md),
                    Expanded(child: _buildAddressContent()),
                    SizedBox(width: AppSizes.sm),
                    _buildActionIcons(context, ref, isDeleting, isUpdating),
                  ],
                ),
                if (_hasNote) ...[
                  SizedBox(height: AppSizes.md),
                  _buildNoteSection(),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLocationIcon() {
    return Container(
      width: 56,
      height: 56,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [AppColors.primary, AppColors.primaryLight],
        ),
        borderRadius: BorderRadius.circular(AppSizes.radius),
        boxShadow: [
          BoxShadow(
            color: AppColors.primary.withValues(alpha: 0.3),
            blurRadius: 12,
            offset: const Offset(0, 4),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Icon(Icons.location_on_rounded, color: AppColors.white, size: 28),
    );
  }

  Widget _buildAddressContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (_hasSubcity)
          _buildAddressLine(
            address.subcity,
            icon: Icons.location_city_rounded,
            isPrimary: true,
          ),
        if (_hasStreet)
          _buildAddressLine(address.street, icon: Icons.signpost_rounded),
        if (_hasBuilding)
          _buildAddressLine(address.building, icon: Icons.business_rounded),
        if (_hasHouseNo)
          _buildAddressLine(
            address.houseNo,
            icon: Icons.home_rounded,
            isSecondary: true,
            prefix: 'House No: ',
          ),
      ],
    );
  }

  Widget _buildActionIcons(
    BuildContext context,
    WidgetRef ref,
    bool isDeleting,
    bool isUpdating,
  ) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        _buildActionIcon(
          icon: Icons.edit_rounded,
          onTap: isUpdating ? null : () => _handleEdit(context, ref),
          color: AppColors.primary,
          isLoading: isUpdating,
        ),
        SizedBox(height: AppSizes.sm),
        _buildActionIcon(
          icon: Icons.delete_rounded,
          onTap: isDeleting ? null : () => _handleDelete(context, ref),
          color: AppColors.error,
          isLoading: isDeleting,
        ),
      ],
    );
  }

  Widget _buildActionIcon({
    required IconData icon,
    required VoidCallback? onTap,
    required Color color,
    bool isLoading = false,
  }) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(AppSizes.radius),
        child: Container(
          width: 36,
          height: 36,
          decoration: BoxDecoration(
            color: isLoading
                ? color.withValues(alpha: 0.3)
                : color.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(AppSizes.radius),
            border: Border.all(color: color.withValues(alpha: 0.2), width: 1),
          ),
          child: Center(
            child: isLoading
                ? SizedBox(
                    width: 16,
                    height: 16,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      valueColor: AlwaysStoppedAnimation<Color>(color),
                    ),
                  )
                : Icon(icon, color: color, size: 18),
          ),
        ),
      ),
    );
  }

  void _handleEdit(BuildContext context, WidgetRef ref) {
    context.push(RouteName.createOrUpdateAddress, extra: address);
  }

  void _handleDelete(BuildContext context, WidgetRef ref) {
    ConfirmationDialog.show(
      context: context,
      title: 'Delete Address?',
      message:
          'Are you sure you want to delete this address? This action cannot be undone.',
      confirmText: 'Delete',
      cancelText: 'Cancel',
      confirmButtonColor: AppColors.error,
    ).then((confirmed) {
      if (confirmed == true) {
        ref.read(addressProvider.notifier).delete(id: address.id);
      }
    });
  }

  Widget _buildAddressLine(
    String text, {
    required IconData icon,
    bool isPrimary = false,
    bool isSecondary = false,
    String? prefix,
  }) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: isPrimary ? AppSizes.xs : AppSizes.xs / 2,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            icon,
            size: 18,
            color: isPrimary
                ? AppColors.primary
                : AppColors.primary.withValues(alpha: 0.7),
          ),
          SizedBox(width: AppSizes.sm),
          Expanded(
            child: Text(
              prefix != null ? '$prefix$text' : text,
              style: isPrimary
                  ? AppTextStyles.h6.copyWith(
                      color: AppColors.txtPrimary,
                      fontWeight: FontWeight.w600,
                      height: 1.3,
                    )
                  : AppTextStyles.bodyMedium.copyWith(
                      color: isSecondary
                          ? AppColors.txtSecondary
                          : AppColors.txtPrimary,
                      height: 1.4,
                      fontWeight: isSecondary
                          ? FontWeight.w400
                          : FontWeight.w500,
                    ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNoteSection() {
    return Container(
      padding: EdgeInsets.all(AppSizes.md),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            AppColors.primary.withValues(alpha: 0.08),
            AppColors.primaryLight.withValues(alpha: 0.05),
          ],
        ),
        borderRadius: BorderRadius.circular(AppSizes.radius),
        border: Border.all(
          color: AppColors.primary.withValues(alpha: 0.2),
          width: 1,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(6),
            decoration: BoxDecoration(
              color: AppColors.primary.withValues(alpha: 0.15),
              borderRadius: BorderRadius.circular(6),
            ),
            child: Icon(Icons.note_rounded, size: 16, color: AppColors.primary),
          ),
          SizedBox(width: AppSizes.sm),
          Expanded(
            child: Text(
              address.note,
              style: AppTextStyles.bodySmall.copyWith(
                color: AppColors.txtSecondary,
                fontStyle: FontStyle.italic,
                height: 1.4,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }

  bool get _hasSubcity =>
      address.subcity.isNotEmpty && address.subcity != 'N/A';
  bool get _hasStreet => address.street.isNotEmpty && address.street != 'N/A';
  bool get _hasBuilding =>
      address.building.isNotEmpty && address.building != 'N/A';
  bool get _hasHouseNo =>
      address.houseNo.isNotEmpty && address.houseNo != 'N/A';
  bool get _hasNote => address.note.isNotEmpty && address.note != 'N/A';
}
