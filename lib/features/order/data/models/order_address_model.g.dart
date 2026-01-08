// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_address_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OrderAddressModel _$OrderAddressModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_OrderAddressModel', json, ($checkedConvert) {
      final val = _OrderAddressModel(
        id: $checkedConvert('id', (v) => (v as num).toInt()),
        orderId: $checkedConvert('orderId', (v) => (v as num).toInt()),
        subcity: $checkedConvert('subcity', (v) => v as String?),
        street: $checkedConvert('street', (v) => v as String?),
        building: $checkedConvert('building', (v) => v as String?),
        houseNo: $checkedConvert('houseNo', (v) => v as String?),
        note: $checkedConvert('note', (v) => v as String?),
        lat: $checkedConvert('lat', (v) => parseDouble(v)),
        lng: $checkedConvert('lng', (v) => parseDouble(v)),
        location: $checkedConvert(
          'location',
          (v) => v == null
              ? null
              : AddressLocationModel.fromJson(v as Map<String, dynamic>),
        ),
        createdAt: $checkedConvert(
          'createdAt',
          (v) => DateTime.parse(v as String),
        ),
      );
      return val;
    });

Map<String, dynamic> _$OrderAddressModelToJson(_OrderAddressModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'orderId': instance.orderId,
      'subcity': instance.subcity,
      'street': instance.street,
      'building': instance.building,
      'houseNo': instance.houseNo,
      'note': instance.note,
      'lat': instance.lat,
      'lng': instance.lng,
      'location': instance.location?.toJson(),
      'createdAt': instance.createdAt.toIso8601String(),
    };
