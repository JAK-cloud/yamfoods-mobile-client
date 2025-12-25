// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_location_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AddressLocationModel _$AddressLocationModelFromJson(
  Map<String, dynamic> json,
) => _AddressLocationModel(
  latitude: parseDouble(json['latitude']),
  longitude: parseDouble(json['longitude']),
);

Map<String, dynamic> _$AddressLocationModelToJson(
  _AddressLocationModel instance,
) => <String, dynamic>{
  'latitude': instance.latitude,
  'longitude': instance.longitude,
};
