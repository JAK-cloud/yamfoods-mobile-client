// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'carts_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CartsResponseModel _$CartsResponseModelFromJson(Map<String, dynamic> json) =>
    _CartsResponseModel(
      carts: (json['carts'] as List<dynamic>)
          .map((e) => CartModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CartsResponseModelToJson(_CartsResponseModel instance) =>
    <String, dynamic>{'carts': instance.carts};
