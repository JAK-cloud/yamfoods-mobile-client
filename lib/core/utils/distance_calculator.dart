import 'package:latlong2/latlong.dart';

/// Default customer position (hardcoded for now).
///
/// This matches the customer location used in order tracking.
/// TODO: Replace with actual user location from GPS or saved address.
const ({double lat, double lng}) defaultCustomerPosition = (
  lat: 9.011046,
  lng: 38.761295,
);

/// Utility class for calculating distances between geographic positions.
class DistanceCalculator {
  /// Singleton instance of Distance for calculating distances.
  static final Distance _distance = Distance();

  /// Calculates the formatted distance between two geographic positions.
  ///
  /// [position1] and [position2] are tuples containing (latitude, longitude).
  ///
  /// Returns the distance as a formatted string:
  /// - If distance < 1000m, returns "Xm" (e.g., "500m")
  /// - If distance >= 1000m, returns "X.Xkm" (e.g., "1.5km")
  ///
  /// Example:
  /// ```dart
  /// final distance = DistanceCalculator.calculateDistanceInMeters(
  ///   (9.011046, 38.761295), // Customer position
  ///   (9.027596658385972, 38.72061392133383), // Branch position
  /// );
  /// print('Distance: $distance'); // "5.2km" or "500m"
  /// ```
  static String calculateDistanceInMeters(
    ({double lat, double lng}) position1,
    ({double lat, double lng}) position2,
  ) {
    final point1 = LatLng(position1.lat, position1.lng);
    final point2 = LatLng(position2.lat, position2.lng);

    // The Distance instance is callable and returns distance in meters
    final distanceInMeters = _distance(point1, point2).round();

    // Format the distance
    if (distanceInMeters < 1000) {
      return '${distanceInMeters}m';
    } else {
      final kilometers = distanceInMeters / 1000;
      return '${kilometers.toStringAsFixed(1)}km';
    }
  }
}
