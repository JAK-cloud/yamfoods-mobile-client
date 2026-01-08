// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subcategories_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SubcategoriesResponseModel _$SubcategoriesResponseModelFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('_SubcategoriesResponseModel', json, ($checkedConvert) {
  final val = _SubcategoriesResponseModel(
    subCategories: $checkedConvert(
      'subCategories',
      (v) => (v as List<dynamic>)
          .map((e) => SubcategoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$SubcategoriesResponseModelToJson(
  _SubcategoriesResponseModel instance,
) => <String, dynamic>{
  'subCategories': instance.subCategories.map((e) => e.toJson()).toList(),
};
