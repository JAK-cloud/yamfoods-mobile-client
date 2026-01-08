// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_order_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateOrderResponseModel _$CreateOrderResponseModelFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('_CreateOrderResponseModel', json, ($checkedConvert) {
  final val = _CreateOrderResponseModel(
    receiveCode: $checkedConvert('receiveCode', (v) => v as String),
    order: $checkedConvert(
      'order',
      (v) => OrderModel.fromJson(v as Map<String, dynamic>),
    ),
  );
  return val;
});

Map<String, dynamic> _$CreateOrderResponseModelToJson(
  _CreateOrderResponseModel instance,
) => <String, dynamic>{
  'receiveCode': instance.receiveCode,
  'order': instance.order.toJson(),
};
