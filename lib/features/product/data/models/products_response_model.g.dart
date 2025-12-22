// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductsResponseModel _$ProductsResponseModelFromJson(
  Map<String, dynamic> json,
) => _ProductsResponseModel(
  products: (json['products'] as List<dynamic>)
      .map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$ProductsResponseModelToJson(
  _ProductsResponseModel instance,
) => <String, dynamic>{'products': instance.products};
