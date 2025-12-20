import '../../domain/entities/branch.dart';
import '../models/branch_model.dart';
import 'working_day_mapper.dart';

extension BranchModelMapper on BranchModel {
  /// Converts [BranchModel] to [Branch] domain entity.
  ///
  /// Parses the location string to a structured record type.
  /// Location format can be:
  /// - "{lat, lng}" (e.g., "{9.027596658385972, 38.72061392133383}")
  /// - "lat, lng" (e.g., "8.9967991, 3807299415")
  Branch toDomain() {
    final location = _parseLocation(this.location);

    return Branch(
      id: id,
      name: name,
      location: location,
      address: address,
      isActive: isActive == 1,
      contactPhone: contactPhone,
      openingHour: openingHour,
      closingHour: closingHour,
      activeWorkingDays: activeWorkingDays
          .map((day) => day.toDomain())
          .toList(),
      launchDate: launchDate,
      createdDate: createdDate,
      lastUpdateDate: lastUpdateDate,
      createdBy: createdBy,
    );
  }

  /// Parses location string to a record type with lat and lng.
  ///
  /// Handles two formats:
  /// 1. "{lat, lng}" - with curly braces
  /// 2. "lat, lng" - without braces
  ({double lat, double lng}) _parseLocation(String locationString) {
    try {
      // Remove curly braces if present
      final cleaned = locationString
          .replaceAll('{', '')
          .replaceAll('}', '')
          .trim();

      // Split by comma
      final parts = cleaned.split(',');

      if (parts.length != 2) {
        throw FormatException(
          'Invalid location format: expected "lat, lng" or "{lat, lng}"',
        );
      }

      final lat = double.parse(parts[0].trim());
      final lng = double.parse(parts[1].trim());

      return (lat: lat, lng: lng);
    } catch (e) {
      throw FormatException(
        'Failed to parse location: $locationString. Error: $e',
      );
    }
  }
}
