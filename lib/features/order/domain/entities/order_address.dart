import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../shared/entities/address_location.dart';

part 'order_address.freezed.dart';

@freezed
sealed class OrderAddress with _$OrderAddress {
  const factory OrderAddress({
    required int id,
    required int orderId,
    String? subcity,
    String? street,
    String? building,
    String? houseNo,
    String? note,
    double? lat,
    double? lng,
    AddressLocation? location,
    required DateTime createdAt,
  }) = _OrderAddress;
}
