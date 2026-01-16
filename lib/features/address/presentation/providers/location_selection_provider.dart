import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/permissions/location/location_permission_service.dart';

part 'location_selection_provider.freezed.dart';
part 'location_selection_provider.g.dart';

/// Enum for location selection mode
enum LocationSelectionMode { currentLocation, mapSelection }

/// State for location selection
@freezed
sealed class LocationSelectionState with _$LocationSelectionState {
  const factory LocationSelectionState({
    @Default(LocationSelectionMode.currentLocation) LocationSelectionMode mode,
    /// Nullable until GPS fetched or existing coordinates set
    double? selectedLat,
    double? selectedLng,
    @Default(true) bool isLoadingLocation,
    String? errorMessage,
    Position? currentPosition,
    /// Tracks if initialized with existing address (update mode)
    @Default(false) bool isInitializedWithExisting,
  }) = _LocationSelectionState;
}

/// Provider for location selection state
@riverpod
class LocationSelection extends _$LocationSelection {
  @override
  LocationSelectionState build() {
    // Fetch current location on initialization (for create mode)
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _fetchCurrentLocation();
    });
    return const LocationSelectionState();
  }

  /// Fetches current location using GPS
  Future<void> _fetchCurrentLocation() async {
    // Don't show loading if already initialized with existing address
    if (!state.isInitializedWithExisting) {
      state = state.copyWith(isLoadingLocation: true, errorMessage: null);
    }

    try {
      final position = await LocationPermissionService.requestCurrentLocation();
      
      // Always cache the current position
      // But only update selected coordinates if in currentLocation mode
      // and NOT initialized with existing address
      if (state.mode == LocationSelectionMode.currentLocation &&
          !state.isInitializedWithExisting) {
        state = state.copyWith(
          selectedLat: position.latitude,
          selectedLng: position.longitude,
          currentPosition: position,
          isLoadingLocation: false,
          errorMessage: null,
        );
      } else {
        // Just cache the position for later use
        state = state.copyWith(
          currentPosition: position,
          isLoadingLocation: false,
        );
      }
    } catch (e) {
      // GPS failed - only show error if not initialized with existing
      if (!state.isInitializedWithExisting) {
        state = state.copyWith(
          isLoadingLocation: false,
          errorMessage: 'Could not get current location. Please pick from map.',
        );
      } else {
        state = state.copyWith(isLoadingLocation: false);
      }
    }
  }

  /// Initialize with existing address coordinates (for update mode)
  void initializeWithExistingAddress(double lat, double lng) {
    state = state.copyWith(
      selectedLat: lat,
      selectedLng: lng,
      mode: LocationSelectionMode.mapSelection,
      isLoadingLocation: false,
      isInitializedWithExisting: true,
      errorMessage: null,
    );
  }

  /// Switches between current location and map selection mode
  void setMode(LocationSelectionMode mode) {
    if (mode == LocationSelectionMode.currentLocation) {
      // If switching to current location and we have cached position, use it
      if (state.currentPosition != null) {
        state = state.copyWith(
          mode: mode,
          selectedLat: state.currentPosition!.latitude,
          selectedLng: state.currentPosition!.longitude,
          isInitializedWithExisting: false, // Allow GPS updates now
        );
      } else {
        // Otherwise fetch current location
        state = state.copyWith(
          mode: mode,
          isInitializedWithExisting: false, // Allow GPS updates now
        );
        _fetchCurrentLocation();
      }
    } else {
      state = state.copyWith(mode: mode);
    }
  }

  /// Updates selected coordinates (used when user picks from map)
  void updateCoordinates(double lat, double lng) {
    state = state.copyWith(
      selectedLat: lat,
      selectedLng: lng,
      mode: LocationSelectionMode.mapSelection,
      errorMessage: null,
    );
  }

  /// Refreshes current location
  Future<void> refreshCurrentLocation() async {
    // Temporarily allow updates
    state = state.copyWith(isInitializedWithExisting: false);
    await _fetchCurrentLocation();
    if (state.mode == LocationSelectionMode.currentLocation &&
        state.currentPosition != null) {
      state = state.copyWith(
        selectedLat: state.currentPosition!.latitude,
        selectedLng: state.currentPosition!.longitude,
      );
    }
  }

  /// Check if coordinates are ready
  bool get hasValidCoordinates =>
      state.selectedLat != null && state.selectedLng != null;
}
