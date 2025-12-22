// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductModel _$ProductModelFromJson(Map<String, dynamic> json) =>
    _ProductModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      description: json['description'] as String,
      price: json['price'] as String,
      discount: json['discount'] as String,
      variants: json['variants'] as String?,
      nutrition: json['nutrition'] as String?,
      categoryId: (json['categoryId'] as num).toInt(),
      subCategoryId: (json['subCategoryId'] as num).toInt(),
      vatRate: json['vatRate'] as String,
      minimumThreshold: (json['minimumThreshold'] as num).toInt(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      imageUrls: (json['imageUrls'] as List<dynamic>)
          .map((e) => ProductImageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      ingredients: (json['ingredients'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      branchId: (json['branchId'] as num).toInt(),
      quantity: (json['quantity'] as num).toInt(),
      averageRating: json['averageRating'] as String,
      reviewCount: (json['reviewCount'] as num).toInt(),
    );

Map<String, dynamic> _$ProductModelToJson(_ProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'discount': instance.discount,
      'variants': instance.variants,
      'nutrition': instance.nutrition,
      'categoryId': instance.categoryId,
      'subCategoryId': instance.subCategoryId,
      'vatRate': instance.vatRate,
      'minimumThreshold': instance.minimumThreshold,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'imageUrls': instance.imageUrls,
      'ingredients': instance.ingredients,
      'branchId': instance.branchId,
      'quantity': instance.quantity,
      'averageRating': instance.averageRating,
      'reviewCount': instance.reviewCount,
    };
