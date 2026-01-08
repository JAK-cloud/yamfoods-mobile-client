// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DeliveryModel _$DeliveryModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_DeliveryModel', json, ($checkedConvert) {
      final val = _DeliveryModel(
        restaurantLocation: $checkedConvert(
          'restaurantLocation',
          (v) => AddressLocationModel.fromJson(v as Map<String, dynamic>),
        ),
        customerLocation: $checkedConvert(
          'customerLocation',
          (v) => AddressLocationModel.fromJson(v as Map<String, dynamic>),
        ),
        route: $checkedConvert(
          'route',
          (v) => RouteModel.fromJson(v as Map<String, dynamic>),
        ),
      );
      return val;
    });

Map<String, dynamic> _$DeliveryModelToJson(_DeliveryModel instance) =>
    <String, dynamic>{
      'restaurantLocation': instance.restaurantLocation.toJson(),
      'customerLocation': instance.customerLocation.toJson(),
      'route': instance.route.toJson(),
    };
