// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_address_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OrderAddressModel _$OrderAddressModelFromJson(Map<String, dynamic> json) =>
    _OrderAddressModel(
      id: (json['id'] as num).toInt(),
      orderId: (json['orderId'] as num).toInt(),
      subcity: json['subcity'] as String?,
      street: json['street'] as String?,
      building: json['building'] as String?,
      houseNo: json['houseNo'] as String?,
      note: json['note'] as String?,
      lat: parseDouble(json['lat']),
      lng: parseDouble(json['lng']),
      location: json['location'] == null
          ? null
          : AddressLocationModel.fromJson(
              json['location'] as Map<String, dynamic>,
            ),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

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
      'location': instance.location,
      'createdAt': instance.createdAt.toIso8601String(),
    };
