// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_order_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateOrderResponseModel _$CreateOrderResponseModelFromJson(
  Map<String, dynamic> json,
) => _CreateOrderResponseModel(
  receiveCode: json['receiveCode'] as String,
  order: OrderModel.fromJson(json['order'] as Map<String, dynamic>),
);

Map<String, dynamic> _$CreateOrderResponseModelToJson(
  _CreateOrderResponseModel instance,
) => <String, dynamic>{
  'receiveCode': instance.receiveCode,
  'order': instance.order,
};
