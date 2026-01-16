// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_selection_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Provider for location selection state

@ProviderFor(LocationSelection)
const locationSelectionProvider = LocationSelectionProvider._();

/// Provider for location selection state
final class LocationSelectionProvider
    extends $NotifierProvider<LocationSelection, LocationSelectionState> {
  /// Provider for location selection state
  const LocationSelectionProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'locationSelectionProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$locationSelectionHash();

  @$internal
  @override
  LocationSelection create() => LocationSelection();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LocationSelectionState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<LocationSelectionState>(value),
    );
  }
}

String _$locationSelectionHash() => r'0662f7359a61820cd6caab98c40651c8c029acf4';

/// Provider for location selection state

abstract class _$LocationSelection extends $Notifier<LocationSelectionState> {
  LocationSelectionState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref as $Ref<LocationSelectionState, LocationSelectionState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<LocationSelectionState, LocationSelectionState>,
              LocationSelectionState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
