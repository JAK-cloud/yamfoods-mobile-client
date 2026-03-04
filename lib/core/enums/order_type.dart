import 'package:flutter/material.dart';

enum OrderType { pickup, dining, delivery }

extension OrderTypeExtension on OrderType {
  /// API/state value: 'pickup', 'dining', 'delivery'.
  String get value => switch (this) {
    OrderType.pickup => 'pickup',
    OrderType.dining => 'dining',
    OrderType.delivery => 'delivery',
  };

  /// Display name: 'Pickup', 'Dining', 'Delivery'.
  String get name => switch (this) {
    OrderType.pickup => 'Pickup',
    OrderType.dining => 'Dining',
    OrderType.delivery => 'Delivery',
  };

  Color get color => switch (this) {
    OrderType.pickup => Colors.amber[700]!,
    OrderType.dining => Colors.brown,
    OrderType.delivery => Colors.green,
  };

  IconData get icon => switch (this) {
    OrderType.pickup => Icons.store_outlined,
    OrderType.dining => Icons.restaurant,
    OrderType.delivery => Icons.local_shipping_outlined,
  };

  String get description => switch (this) {
    OrderType.pickup => 'Pickup order',
    OrderType.dining => 'Dining order',
    OrderType.delivery => 'Delivery order',
  };
}

/// Extension to convert string type values from API to [OrderType] enum.
extension OrderTypeStringExtension on String {
  /// Converts API type string to [OrderType] enum.
  ///
  /// Handles different string formats:
  /// - 'pickup' → [OrderType.pickup]
  /// - 'dining' → [OrderType.dining]
  /// - 'delivery' → [OrderType.delivery]
  OrderType toOrderType() {
    switch (toLowerCase()) {
      case 'pickup':
        return OrderType.pickup;
      case 'dining':
        return OrderType.dining;
      case 'delivery':
        return OrderType.delivery;
      default:
        return OrderType.pickup; // Default fallback
    }
  }
}
