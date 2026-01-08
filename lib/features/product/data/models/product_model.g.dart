// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductModel _$ProductModelFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('_ProductModel', json, ($checkedConvert) {
  final val = _ProductModel(
    id: $checkedConvert('id', (v) => (v as num).toInt()),
    name: $checkedConvert('name', (v) => v as String),
    description: $checkedConvert('description', (v) => v as String),
    price: $checkedConvert('price', (v) => v as String),
    discount: $checkedConvert('discount', (v) => v as String),
    variants: $checkedConvert('variants', (v) => v as String?),
    nutrition: $checkedConvert('nutrition', (v) => v as String?),
    categoryId: $checkedConvert('categoryId', (v) => (v as num).toInt()),
    subCategoryId: $checkedConvert('subCategoryId', (v) => (v as num).toInt()),
    vatRate: $checkedConvert('vatRate', (v) => v as String),
    minimumThreshold: $checkedConvert(
      'minimumThreshold',
      (v) => (v as num).toInt(),
    ),
    createdAt: $checkedConvert('createdAt', (v) => DateTime.parse(v as String)),
    updatedAt: $checkedConvert('updatedAt', (v) => DateTime.parse(v as String)),
    imageUrls: $checkedConvert(
      'imageUrls',
      (v) => (v as List<dynamic>)
          .map((e) => ProductImageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
    ingredients: $checkedConvert(
      'ingredients',
      (v) => (v as List<dynamic>).map((e) => e as String).toList(),
    ),
    branchId: $checkedConvert('branchId', (v) => (v as num).toInt()),
    quantity: $checkedConvert('quantity', (v) => (v as num).toInt()),
    averageRating: $checkedConvert('averageRating', (v) => v as String),
    reviewCount: $checkedConvert('reviewCount', (v) => (v as num).toInt()),
  );
  return val;
});

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
      'imageUrls': instance.imageUrls.map((e) => e.toJson()).toList(),
      'ingredients': instance.ingredients,
      'branchId': instance.branchId,
      'quantity': instance.quantity,
      'averageRating': instance.averageRating,
      'reviewCount': instance.reviewCount,
    };
