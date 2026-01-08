// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subcategory_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SubcategoryModel _$SubcategoryModelFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('_SubcategoryModel', json, ($checkedConvert) {
  final val = _SubcategoryModel(
    id: $checkedConvert('id', (v) => (v as num).toInt()),
    categoryId: $checkedConvert('categoryId', (v) => (v as num).toInt()),
    name: $checkedConvert('name', (v) => v as String),
    detail: $checkedConvert('detail', (v) => v as String?),
    imageUrl: $checkedConvert('imageUrl', (v) => v as String?),
    createdAt: $checkedConvert('createdAt', (v) => DateTime.parse(v as String)),
    updatedAt: $checkedConvert('updatedAt', (v) => DateTime.parse(v as String)),
  );
  return val;
});

Map<String, dynamic> _$SubcategoryModelToJson(_SubcategoryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'categoryId': instance.categoryId,
      'name': instance.name,
      'detail': instance.detail,
      'imageUrl': instance.imageUrl,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
