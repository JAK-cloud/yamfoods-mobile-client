// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductsResponseModel _$ProductsResponseModelFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('_ProductsResponseModel', json, ($checkedConvert) {
  final val = _ProductsResponseModel(
    products: $checkedConvert(
      'products',
      (v) => (v as List<dynamic>)
          .map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$ProductsResponseModelToJson(
  _ProductsResponseModel instance,
) => <String, dynamic>{
  'products': instance.products.map((e) => e.toJson()).toList(),
};
