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
    subcity: $checkedConvert('subcity', (v) => v as String? ?? 'N/A'),
    street: $checkedConvert('street', (v) => v as String? ?? 'N/A'),
    building: $checkedConvert('building', (v) => v as String? ?? 'N/A'),
    houseNo: $checkedConvert('houseNo', (v) => v as String? ?? 'N/A'),
    note: $checkedConvert('note', (v) => v as String? ?? 'N/A'),
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
      'subcity': instance.subcity,
      'street': instance.street,
      'building': instance.building,
      'houseNo': instance.houseNo,
      'note': instance.note,
      'lat': instance.lat,
      'lng': instance.lng,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
