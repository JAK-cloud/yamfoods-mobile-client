// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_location_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AddressLocationModel _$AddressLocationModelFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('_AddressLocationModel', json, ($checkedConvert) {
  final val = _AddressLocationModel(
    latitude: $checkedConvert('latitude', (v) => parseDouble(v)),
    longitude: $checkedConvert('longitude', (v) => parseDouble(v)),
  );
  return val;
});

Map<String, dynamic> _$AddressLocationModelToJson(
  _AddressLocationModel instance,
) => <String, dynamic>{
  'latitude': instance.latitude,
  'longitude': instance.longitude,
};
