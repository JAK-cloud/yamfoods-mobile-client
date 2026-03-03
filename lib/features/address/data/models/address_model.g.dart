// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AddressModel _$AddressModelFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('_AddressModel', json, ($checkedConvert) {
  final val = _AddressModel(
    id: $checkedConvert('id', (v) => (v as num).toInt()),
    userId: $checkedConvert('userId', (v) => (v as num).toInt()),
    address: $checkedConvert('address', (v) => v as String),
    receiverPhone: $checkedConvert('receiverPhone', (v) => v as String?),
    receiverName: $checkedConvert('receiverName', (v) => v as String?),
    label: $checkedConvert('label', (v) => v as String?),
    lat: $checkedConvert('lat', (v) => v as String),
    lng: $checkedConvert('lng', (v) => v as String),
    createdAt: $checkedConvert('createdAt', (v) => DateTime.parse(v as String)),
    updatedAt: $checkedConvert('updatedAt', (v) => DateTime.parse(v as String)),
  );
  return val;
});

Map<String, dynamic> _$AddressModelToJson(_AddressModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'address': instance.address,
      'receiverPhone': instance.receiverPhone,
      'receiverName': instance.receiverName,
      'label': instance.label,
      'lat': instance.lat,
      'lng': instance.lng,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
