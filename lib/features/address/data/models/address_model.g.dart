// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AddressModel _$AddressModelFromJson(Map<String, dynamic> json) =>
    _AddressModel(
      id: (json['id'] as num).toInt(),
      userId: (json['userId'] as num).toInt(),
      subcity: json['subcity'] as String? ?? 'N/A',
      street: json['street'] as String? ?? 'N/A',
      building: json['building'] as String? ?? 'N/A',
      houseNo: json['houseNo'] as String? ?? 'N/A',
      note: json['note'] as String? ?? 'N/A',
      lat: json['lat'] as String,
      lng: json['lng'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

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
