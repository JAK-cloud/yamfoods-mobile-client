import '../../domain/entities/order_address.dart';
import '../models/order_address_model.dart';

extension OrderAddressMapper on OrderAddressModel {
  OrderAddress toDomain() => OrderAddress(
    id: id,
    orderId: orderId,
    address: address,
    building: building,
    houseNo: houseNo,
    lat: lat,
    lng: lng,
    createdAt: createdAt,
  );
}
