// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OrderItemModel _$OrderItemModelFromJson(Map<String, dynamic> json) =>
    _OrderItemModel(
      id: (json['id'] as num).toInt(),
      orderId: (json['orderId'] as num).toInt(),
      productId: (json['productId'] as num?)?.toInt(),
      quantity: (json['quantity'] as num).toInt(),
      name: json['name'] as String,
      price: parseDouble(json['price']),
      images: (json['images'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      description: json['description'] as String?,
      ingredients: (json['ingredients'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      discount: json['discount'] as String?,
      variants: json['variants'] as String?,
      nutrition: json['nutrition'] as String?,
      vatRate: parseDouble(json['vatRate']),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

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
