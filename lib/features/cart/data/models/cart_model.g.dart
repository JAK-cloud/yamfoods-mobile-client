// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CartModel _$CartModelFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('_CartModel', json, ($checkedConvert) {
  final val = _CartModel(
    id: $checkedConvert('id', (v) => (v as num).toInt()),
    userId: $checkedConvert('userId', (v) => (v as num).toInt()),
    productId: $checkedConvert('productId', (v) => (v as num).toInt()),
    quantity: $checkedConvert('quantity', (v) => (v as num).toInt()),
    createdAt: $checkedConvert('createdAt', (v) => DateTime.parse(v as String)),
    updatedAt: $checkedConvert('updatedAt', (v) => DateTime.parse(v as String)),
    product: $checkedConvert(
      'product',
      (v) => ProductModel.fromJson(v as Map<String, dynamic>),
    ),
  );
  return val;
});

Map<String, dynamic> _$CartModelToJson(_CartModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'productId': instance.productId,
      'quantity': instance.quantity,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'product': instance.product.toJson(),
    };
