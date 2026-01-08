// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver_location_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Stream provider for driver location updates
///
/// Listens to `driver_location_updated` events from Socket.IO and emits
/// [DriverLocation] objects whenever the driver's location changes.
///
/// The provider:
/// - Automatically connects to Socket.IO if not already connected
/// - Joins the tracking room for the specified order
/// - Parses incoming location data into [DriverLocation] model
/// - Handles errors gracefully (logs and continues)
///
/// [orderId] - The order ID to track

@ProviderFor(driverLocation)
const driverLocationProvider = DriverLocationFamily._();

/// Stream provider for driver location updates
///
/// Listens to `driver_location_updated` events from Socket.IO and emits
/// [DriverLocation] objects whenever the driver's location changes.
///
/// The provider:
/// - Automatically connects to Socket.IO if not already connected
/// - Joins the tracking room for the specified order
/// - Parses incoming location data into [DriverLocation] model
/// - Handles errors gracefully (logs and continues)
///
/// [orderId] - The order ID to track

final class DriverLocationProvider
    extends
        $FunctionalProvider<
          AsyncValue<DriverLocation>,
          DriverLocation,
          Stream<DriverLocation>
        >
    with $FutureModifier<DriverLocation>, $StreamProvider<DriverLocation> {
  /// Stream provider for driver location updates
  ///
  /// Listens to `driver_location_updated` events from Socket.IO and emits
  /// [DriverLocation] objects whenever the driver's location changes.
  ///
  /// The provider:
  /// - Automatically connects to Socket.IO if not already connected
  /// - Joins the tracking room for the specified order
  /// - Parses incoming location data into [DriverLocation] model
  /// - Handles errors gracefully (logs and continues)
  ///
  /// [orderId] - The order ID to track
  const DriverLocationProvider._({
    required DriverLocationFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'driverLocationProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$driverLocationHash();

  @override
  String toString() {
    return r'driverLocationProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $StreamProviderElement<DriverLocation> $createElement(
    $ProviderPointer pointer,
  ) => $StreamProviderElement(pointer);

  @override
  Stream<DriverLocation> create(Ref ref) {
    final argument = this.argument as int;
    return driverLocation(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is DriverLocationProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$driverLocationHash() => r'00ebed4be08ba06c32cb7b80b985466483f46290';

/// Stream provider for driver location updates
///
/// Listens to `driver_location_updated` events from Socket.IO and emits
/// [DriverLocation] objects whenever the driver's location changes.
///
/// The provider:
/// - Automatically connects to Socket.IO if not already connected
/// - Joins the tracking room for the specified order
/// - Parses incoming location data into [DriverLocation] model
/// - Handles errors gracefully (logs and continues)
///
/// [orderId] - The order ID to track

final class DriverLocationFamily extends $Family
    with $FunctionalFamilyOverride<Stream<DriverLocation>, int> {
  const DriverLocationFamily._()
    : super(
        retry: null,
        name: r'driverLocationProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// Stream provider for driver location updates
  ///
  /// Listens to `driver_location_updated` events from Socket.IO and emits
  /// [DriverLocation] objects whenever the driver's location changes.
  ///
  /// The provider:
  /// - Automatically connects to Socket.IO if not already connected
  /// - Joins the tracking room for the specified order
  /// - Parses incoming location data into [DriverLocation] model
  /// - Handles errors gracefully (logs and continues)
  ///
  /// [orderId] - The order ID to track

  DriverLocationProvider call(int orderId) =>
      DriverLocationProvider._(argument: orderId, from: this);

  @override
  String toString() => r'driverLocationProvider';
}
