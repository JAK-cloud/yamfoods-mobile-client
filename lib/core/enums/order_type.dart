import 'package:flutter/material.dart';

enum OrderType { pickup, delivery }

extension OrderTypeExtension on OrderType {
  String get name => switch (this) {
    OrderType.pickup => 'Pickup',
    OrderType.delivery => 'Delivery',
  };

  Color get color => switch (this) {
    OrderType.pickup => Colors.amber[700]!,
    OrderType.delivery => Colors.green,
  };

  IconData get icon => switch (this) {
    OrderType.pickup => Icons.store_outlined,
    OrderType.delivery => Icons.local_shipping_outlined,
  };

  String get description => switch (this) {
    OrderType.pickup => 'Pickup order',
    OrderType.delivery => 'Delivery order',
  };
}

/// Extension to convert string type values from API to [OrderType] enum.
extension OrderTypeStringExtension on String {
  /// Converts API type string to [OrderType] enum.
  ///
  /// Handles different string formats:
  /// - 'pickup' → [OrderType.pickup]
  /// - 'delivery' → [OrderType.delivery]
  OrderType toOrderType() {
    switch (toLowerCase()) {
      case 'pickup':
        return OrderType.pickup;
      case 'delivery':
        return OrderType.delivery;
      default:
        return OrderType.pickup; // Default fallback
    }
  }
}