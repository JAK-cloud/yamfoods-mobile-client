import 'package:flutter/material.dart';
import 'package:gebeta_gl/gebeta_gl.dart';

import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_sizes.dart';
import '../../../../core/constants/gebeta_map_config.dart';

/// Non-interactive mini-map preview centered at a given coordinate.
///
/// Intended for “Current Location” display (exact preview) and anywhere else
/// a lightweight map snapshot is needed.
class LocationMapPreview extends StatelessWidget {
  final double lat;
  final double lng;
  final double height;
  final String? badgeText;

  const LocationMapPreview({
    super.key,
    required this.lat,
    required this.lng,
    this.height = 180,
    this.badgeText,
  });

  @override
  Widget build(BuildContext context) {
    final child = ClipRRect(
      borderRadius: BorderRadius.circular(AppSizes.radius),
      child: Stack(
        children: [
          AbsorbPointer(
            child: GebetaMap(
              // Key forces rebuild when coordinates change
              key: ValueKey('preview_${lat}_$lng'),
              initialCameraPosition: CameraPosition(
                target: LatLng(lat, lng),
                zoom: 16.0,
              ),
              apiKey: GebetaMapConfig.apiKey,
              attributionButtonPosition: AttributionButtonPosition.bottomRight,
              myLocationEnabled: false,
            ),
          ),
          // Pin
          Center(
            child: Icon(
              Icons.location_on_rounded,
              size: 44,
              color: AppColors.primary,
            ),
          ),
          if (badgeText != null)
            Positioned(
              top: AppSizes.sm,
              left: AppSizes.sm,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSizes.sm,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.92),
                  borderRadius: BorderRadius.circular(999),
                  border: Border.all(
                    color: AppColors.primary.withValues(alpha: 0.2),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.my_location_rounded,
                      size: 14,
                      color: AppColors.primary,
                    ),
                    const SizedBox(width: 6),
                    Text(
                      badgeText!,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: AppColors.txtPrimary,
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );

    return SizedBox(height: height, child: child);
  }
}
