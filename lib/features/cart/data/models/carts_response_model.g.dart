// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'carts_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CartsResponseModel _$CartsResponseModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_CartsResponseModel', json, ($checkedConvert) {
      final val = _CartsResponseModel(
        carts: $checkedConvert(
          'carts',
          (v) => (v as List<dynamic>)
              .map((e) => CartModel.fromJson(e as Map<String, dynamic>))
              .toList(),
        ),
      );
      return val;
    });

Map<String, dynamic> _$CartsResponseModelToJson(_CartsResponseModel instance) =>
    <String, dynamic>{'carts': instance.carts.map((e) => e.toJson()).toList()};
