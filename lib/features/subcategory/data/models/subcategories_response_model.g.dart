// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subcategories_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SubcategoriesResponseModel _$SubcategoriesResponseModelFromJson(
  Map<String, dynamic> json,
) => _SubcategoriesResponseModel(
  subCategories: (json['subCategories'] as List<dynamic>)
      .map((e) => SubcategoryModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$SubcategoriesResponseModelToJson(
  _SubcategoriesResponseModel instance,
) => <String, dynamic>{'subCategories': instance.subCategories};
