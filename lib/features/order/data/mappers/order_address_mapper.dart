
import '../../../../shared/mappers/address_location_mapper.dart';
import '../../domain/entities/order_address.dart';
import '../models/order_address_model.dart';

extension OrderAddressMapper on OrderAddressModel {
  OrderAddress toDomain() => OrderAddress(
    id: id,
    orderId: orderId,
    subcity: subcity,
    street: street,
    building: building,
    houseNo: houseNo,
    note: note,
    lat: lat,
    lng: lng,
    location: location?.toDomain(),
    createdAt: createdAt,
  );
}
