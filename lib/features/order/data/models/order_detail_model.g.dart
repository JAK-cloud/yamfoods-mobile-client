// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OrderDetailModel _$OrderDetailModelFromJson(Map<String, dynamic> json) =>
    _OrderDetailModel(
      order: OrderModel.fromJson(json['order'] as Map<String, dynamic>),
      items: (json['items'] as List<dynamic>)
          .map((e) => OrderItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      address: OrderAddressModel.fromJson(
        json['address'] as Map<String, dynamic>,
      ),
      payment: PaymentModel.fromJson(json['payment'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderDetailModelToJson(_OrderDetailModel instance) =>
    <String, dynamic>{
      'order': instance.order,
      'items': instance.items,
      'address': instance.address,
      'payment': instance.payment,
    };
