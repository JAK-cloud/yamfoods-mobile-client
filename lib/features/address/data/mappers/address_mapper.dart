import '../../domain/entities/address.dart';
import '../models/address_model.dart';

extension AddressModelMapper on AddressModel {
  /// Converts data model to domain entity.
  Address toDomain() {
    return Address(
      id: id,
      userId: userId,
      subcity: subcity,
      street: street,
      building: building,
      houseNo: houseNo,
      note: note,
      lat: lat,
      lng: lng,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}
