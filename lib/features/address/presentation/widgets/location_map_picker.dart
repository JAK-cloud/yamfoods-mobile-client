import 'dart:math' show Point;

import 'package:flutter/material.dart';
import 'package:gebeta_gl/gebeta_gl.dart';

import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_sizes.dart';
import '../../../../app/theme/app_text_styles.dart';
import '../../../../core/constants/gebeta_map_config.dart';

/// Map widget for picking location manually.
///
/// User must TAP on the map to select a location.
/// The [onLocationSelected] callback is called immediately when user taps.
class LocationMapPicker extends StatefulWidget {
  final double initialLat;
  final double initialLng;
  final void Function(double lat, double lng) onLocationSelected;

  const LocationMapPicker({
    super.key,
    required this.initialLat,
    required this.initialLng,
    required this.onLocationSelected,
  });

  @override
  State<LocationMapPicker> createState() => _LocationMapPickerState();
}

class _LocationMapPickerState extends State<LocationMapPicker> {
  GebetaMapController? _mapController;
  late double _selectedLat;
  late double _selectedLng;
  bool _hasTapped = false;

  @override
  void initState() {
    super.initState();
    _selectedLat = widget.initialLat;
    _selectedLng = widget.initialLng;
    // Notify parent of initial selection
    WidgetsBinding.instance.addPostFrameCallback((_) {
      widget.onLocationSelected(_selectedLat, _selectedLng);
    });
  }

  @override
  void dispose() {
    _mapController?.dispose();
    super.dispose();
  }

  void _onMapCreated(GebetaMapController controller) {
    _mapController = controller;
  }

  void _onMapClick(Point<double> point, LatLng coordinates) {
    // Move camera to tapped location
    _mapController?.animateCamera(CameraUpdate.newLatLng(coordinates));

    setState(() {
      _selectedLat = coordinates.latitude;
      _selectedLng = coordinates.longitude;
      _hasTapped = true;
    });

    // Immediately notify parent
    widget.onLocationSelected(_selectedLat, _selectedLng);
  }

  void _moveToMyLocation() {
    final target = LatLng(widget.initialLat, widget.initialLng);
    _mapController?.animateCamera(CameraUpdate.newLatLng(target));

    setState(() {
      _selectedLat = widget.initialLat;
      _selectedLng = widget.initialLng;
      _hasTapped = true;
    });

    widget.onLocationSelected(_selectedLat, _selectedLng);
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(AppSizes.radius),
      child: Stack(
        children: [
          GebetaMap(
            initialCameraPosition: CameraPosition(
              target: LatLng(widget.initialLat, widget.initialLng),
              zoom: 15.0,
            ),
            apiKey: GebetaMapConfig.apiKey,
            attributionButtonPosition: AttributionButtonPosition.bottomRight,
            onMapCreated: _onMapCreated,
            onMapClick: _onMapClick,
            myLocationEnabled: true,
          ),

          // Instruction + coordinates banner at top
          Positioned(
            top: AppSizes.md,
            left: AppSizes.md,
            right: AppSizes.md,
            child: Container(
              padding: const EdgeInsets.all(AppSizes.md),
              decoration: BoxDecoration(
                color: AppColors.white.withValues(alpha: 0.95),
                borderRadius: BorderRadius.circular(AppSizes.radius),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.1),
                    blurRadius: 8,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      Icon(
                        _hasTapped ? Icons.check_circle : Icons.touch_app,
                        color: _hasTapped
                            ? AppColors.success
                            : AppColors.primary,
                        size: 20,
                      ),
                      const SizedBox(width: AppSizes.sm),
                      Expanded(
                        child: Text(
                          _hasTapped
                              ? 'Location selected! Tap again to change.'
                              : 'Tap on the map to select location',
                          style: AppTextStyles.bodySmall.copyWith(
                            color: AppColors.txtPrimary,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: AppSizes.sm),
                  // Show selected coordinates
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppSizes.sm,
                      vertical: AppSizes.xs,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.primary.withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(AppSizes.radiusSm),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.location_on_rounded,
                          size: 14,
                          color: AppColors.primary,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          '${_selectedLat.toStringAsFixed(6)}, ${_selectedLng.toStringAsFixed(6)}',
                          style: AppTextStyles.caption.copyWith(
                            color: AppColors.primary,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Center pin indicator
          Center(
            child: Icon(
              Icons.location_on_rounded,
              size: 48,
              color: AppColors.primary,
            ),
          ),

          // My Location FAB
          Positioned(
            bottom: AppSizes.md,
            right: AppSizes.md,
            child: FloatingActionButton(
              mini: true,
              backgroundColor: AppColors.white,
              onPressed: _moveToMyLocation,
              child: Icon(Icons.my_location_rounded, color: AppColors.primary),
            ),
          ),
        ],
      ),
    );
  }
}
