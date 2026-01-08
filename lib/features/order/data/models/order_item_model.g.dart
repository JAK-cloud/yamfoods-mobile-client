// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OrderItemModel _$OrderItemModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_OrderItemModel', json, ($checkedConvert) {
      final val = _OrderItemModel(
        id: $checkedConvert('id', (v) => (v as num).toInt()),
        orderId: $checkedConvert('orderId', (v) => (v as num).toInt()),
        productId: $checkedConvert('productId', (v) => (v as num?)?.toInt()),
        quantity: $checkedConvert('quantity', (v) => (v as num).toInt()),
        name: $checkedConvert('name', (v) => v as String),
        price: $checkedConvert('price', (v) => parseDouble(v)),
        images: $checkedConvert(
          'images',
          (v) => (v as List<dynamic>).map((e) => e as String).toList(),
        ),
        description: $checkedConvert('description', (v) => v as String?),
        ingredients: $checkedConvert(
          'ingredients',
          (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
        ),
        discount: $checkedConvert('discount', (v) => v as String?),
        variants: $checkedConvert('variants', (v) => v as String?),
        nutrition: $checkedConvert('nutrition', (v) => v as String?),
        vatRate: $checkedConvert('vatRate', (v) => parseDouble(v)),
        createdAt: $checkedConvert(
          'createdAt',
          (v) => DateTime.parse(v as String),
        ),
      );
      return val;
    });

Map<String, dynamic> _$OrderItemModelToJson(_OrderItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'orderId': instance.orderId,
      'productId': instance.productId,
      'quantity': instance.quantity,
      'name': instance.name,
      'price': instance.price,
      'images': instance.images,
      'description': instance.description,
      'ingredients': instance.ingredients,
      'discount': instance.discount,
      'variants': instance.variants,
      'nutrition': instance.nutrition,
      'vatRate': instance.vatRate,
      'createdAt': instance.createdAt.toIso8601String(),
    };
