import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../app/routes/route_names.dart';
import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_sizes.dart';
import '../../../../app/theme/app_text_styles.dart';
import '../providers/location_selection_provider.dart';
import 'location_map_preview.dart';

/// Widget for location selection with mode toggle and coordinate display
class LocationSelectionSection extends ConsumerWidget {
  const LocationSelectionSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locationState = ref.watch(locationSelectionProvider);
    final hasCoordinates =
        locationState.selectedLat != null && locationState.selectedLng != null;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildLabel('Location Selection *'),
        const SizedBox(height: AppSizes.sm),
        _buildModeToggle(context, ref, locationState.mode),
        const SizedBox(height: AppSizes.md),
        // Show map preview only when coordinates are available
        if (hasCoordinates)
          LocationMapPreview(
            lat: locationState.selectedLat!,
            lng: locationState.selectedLng!,
            badgeText:
                locationState.mode == LocationSelectionMode.currentLocation
                    ? 'Current location'
                    : 'Selected from map',
          )
        else
          _buildLoadingPlaceholder(locationState),
        const SizedBox(height: AppSizes.md),
        _buildLocationInfoCard(context, ref, locationState),
      ],
    );
  }

  Widget _buildLabel(String text) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.w600,
        color: AppColors.txtSecondary.withValues(alpha: 0.8),
      ),
    );
  }

  /// Loading placeholder when coordinates are not yet available
  Widget _buildLoadingPlaceholder(LocationSelectionState state) {
    return Container(
      height: 180,
      decoration: BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.circular(AppSizes.radius),
        border: Border.all(
          color: AppColors.primary.withValues(alpha: 0.2),
          width: 1,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (state.isLoadingLocation) ...[
              SizedBox(
                width: 32,
                height: 32,
                child: CircularProgressIndicator(
                  strokeWidth: 3,
                  valueColor: AlwaysStoppedAnimation<Color>(AppColors.primary),
                ),
              ),
              const SizedBox(height: AppSizes.md),
              Text(
                'Getting your location...',
                style: AppTextStyles.bodySmall.copyWith(
                  color: AppColors.txtSecondary,
                ),
              ),
            ] else if (state.errorMessage != null) ...[
              Icon(
                Icons.location_off_rounded,
                size: 40,
                color: AppColors.error.withValues(alpha: 0.7),
              ),
              const SizedBox(height: AppSizes.sm),
              Text(
                'Location unavailable',
                style: AppTextStyles.bodyMedium.copyWith(
                  color: AppColors.txtPrimary,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: AppSizes.xs),
              Text(
                'Please pick from map',
                style: AppTextStyles.bodySmall.copyWith(
                  color: AppColors.txtSecondary,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildModeToggle(
    BuildContext context,
    WidgetRef ref,
    LocationSelectionMode currentMode,
  ) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.circular(AppSizes.radius),
        border: Border.all(
          color: AppColors.primary.withValues(alpha: 0.2),
          width: 1,
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: _buildModeButton(
              context: context,
              ref: ref,
              mode: LocationSelectionMode.currentLocation,
              label: 'Current Location',
              icon: Icons.my_location_rounded,
              isSelected: currentMode == LocationSelectionMode.currentLocation,
            ),
          ),
          Expanded(
            child: _buildModeButton(
              context: context,
              ref: ref,
              mode: LocationSelectionMode.mapSelection,
              label: 'Pick from Map',
              icon: Icons.map_rounded,
              isSelected: currentMode == LocationSelectionMode.mapSelection,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildModeButton({
    required BuildContext context,
    required WidgetRef ref,
    required LocationSelectionMode mode,
    required String label,
    required IconData icon,
    required bool isSelected,
  }) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () async {
          if (mode == LocationSelectionMode.currentLocation) {
            ref.read(locationSelectionProvider.notifier).setMode(mode);
            return;
          }

          // Navigate to map picker
          final state = ref.read(locationSelectionProvider);
          
          // Use current coordinates if available, otherwise use current position
          // If neither available, picker will use its own GPS
          final initialLat = state.selectedLat ?? state.currentPosition?.latitude;
          final initialLng = state.selectedLng ?? state.currentPosition?.longitude;
          
          final result = await context.push<Map<String, double>>(
            RouteName.pickLocationFromMap,
            extra: initialLat != null && initialLng != null
                ? <String, double>{'lat': initialLat, 'lng': initialLng}
                : null,
          );

          if (result == null) return;

          final lat = result['lat'];
          final lng = result['lng'];
          if (lat == null || lng == null) return;

          ref
              .read(locationSelectionProvider.notifier)
              .updateCoordinates(lat, lng);
        },
        borderRadius: BorderRadius.circular(AppSizes.radius),
        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: AppSizes.md,
            horizontal: AppSizes.sm,
          ),
          decoration: BoxDecoration(
            color: isSelected
                ? AppColors.primary.withValues(alpha: 0.1)
                : Colors.transparent,
            borderRadius: BorderRadius.circular(AppSizes.radius),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 20,
                color: isSelected ? AppColors.primary : AppColors.txtSecondary,
              ),
              SizedBox(width: AppSizes.xs),
              Text(
                label,
                style: AppTextStyles.bodyMedium.copyWith(
                  color: isSelected ? AppColors.primary : AppColors.txtSecondary,
                  fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLocationInfoCard(
    BuildContext context,
    WidgetRef ref,
    LocationSelectionState state,
  ) {
    final hasCoordinates =
        state.selectedLat != null && state.selectedLng != null;

    return Container(
      padding: EdgeInsets.all(AppSizes.md),
      decoration: BoxDecoration(
        color: AppColors.primary.withValues(alpha: 0.05),
        borderRadius: BorderRadius.circular(AppSizes.radius),
        border: Border.all(
          color: AppColors.primary.withValues(alpha: 0.2),
          width: 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.location_on_rounded,
                size: 20,
                color: AppColors.primary,
              ),
              SizedBox(width: AppSizes.sm),
              Text(
                'Selected Location',
                style: AppTextStyles.bodyMedium.copyWith(
                  fontWeight: FontWeight.w600,
                  color: AppColors.txtPrimary,
                ),
              ),
              const Spacer(),
              if (state.isLoadingLocation)
                SizedBox(
                  width: 16,
                  height: 16,
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                    valueColor: AlwaysStoppedAnimation<Color>(AppColors.primary),
                  ),
                )
              else if (hasCoordinates &&
                  state.mode == LocationSelectionMode.currentLocation)
                Icon(
                  Icons.check_circle_rounded,
                  size: 20,
                  color: AppColors.success,
                ),
            ],
          ),
          if (state.errorMessage != null) ...[
            SizedBox(height: AppSizes.xs),
            Text(
              state.errorMessage!,
              style: AppTextStyles.bodySmall.copyWith(color: AppColors.error),
            ),
          ],
          SizedBox(height: AppSizes.sm),
          if (hasCoordinates) ...[
            Text(
              'Latitude: ${state.selectedLat!.toStringAsFixed(6)}',
              style: AppTextStyles.bodySmall.copyWith(
                color: AppColors.txtSecondary,
              ),
            ),
            SizedBox(height: AppSizes.xs / 2),
            Text(
              'Longitude: ${state.selectedLng!.toStringAsFixed(6)}',
              style: AppTextStyles.bodySmall.copyWith(
                color: AppColors.txtSecondary,
              ),
            ),
          ] else
            Text(
              'Waiting for location...',
              style: AppTextStyles.bodySmall.copyWith(
                color: AppColors.txtSecondary,
                fontStyle: FontStyle.italic,
              ),
            ),
          if (state.mode == LocationSelectionMode.currentLocation) ...[
            SizedBox(height: AppSizes.sm),
            Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () => ref
                    .read(locationSelectionProvider.notifier)
                    .refreshCurrentLocation(),
                borderRadius: BorderRadius.circular(AppSizes.radius),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: AppSizes.xs,
                    horizontal: AppSizes.sm,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.refresh_rounded,
                        size: 16,
                        color: AppColors.primary,
                      ),
                      SizedBox(width: AppSizes.xs),
                      Text(
                        'Refresh Location',
                        style: AppTextStyles.bodySmall.copyWith(
                          color: AppColors.primary,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}
