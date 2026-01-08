// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CategoriesResponseModel _$CategoriesResponseModelFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('_CategoriesResponseModel', json, ($checkedConvert) {
  final val = _CategoriesResponseModel(
    categories: $checkedConvert(
      'categories',
      (v) => (v as List<dynamic>)
          .map((e) => CategoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$CategoriesResponseModelToJson(
  _CategoriesResponseModel instance,
) => <String, dynamic>{
  'categories': instance.categories.map((e) => e.toJson()).toList(),
};
