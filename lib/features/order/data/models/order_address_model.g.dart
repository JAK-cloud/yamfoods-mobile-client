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
        address: $checkedConvert('address', (v) => v as String),
        receiverPhone: $checkedConvert('receiverPhone', (v) => v as String?),
        receiverName: $checkedConvert('receiverName', (v) => v as String?),
        label: $checkedConvert('label', (v) => v as String?),
        lat: $checkedConvert('lat', (v) => parseDoubleNullable(v)),
        lng: $checkedConvert('lng', (v) => parseDoubleNullable(v)),
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
      'address': instance.address,
      'receiverPhone': instance.receiverPhone,
      'receiverName': instance.receiverName,
      'label': instance.label,
      'lat': instance.lat,
      'lng': instance.lng,
      'createdAt': instance.createdAt.toIso8601String(),
    };
