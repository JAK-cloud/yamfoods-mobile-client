// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_location_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OrderLocationModel _$OrderLocationModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_OrderLocationModel', json, ($checkedConvert) {
      final val = _OrderLocationModel(
        lat: $checkedConvert('lat', (v) => (v as num?)?.toDouble()),
        lng: $checkedConvert('lng', (v) => (v as num?)?.toDouble()),
      );
      return val;
    });

Map<String, dynamic> _$OrderLocationModelToJson(_OrderLocationModel instance) =>
    <String, dynamic>{'lat': instance.lat, 'lng': instance.lng};
