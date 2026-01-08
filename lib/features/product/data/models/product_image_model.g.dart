// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_image_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductImageModel _$ProductImageModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_ProductImageModel', json, ($checkedConvert) {
      final val = _ProductImageModel(
        url: $checkedConvert('url', (v) => v as String),
        isMain: $checkedConvert('is_main', (v) => v as bool),
      );
      return val;
    }, fieldKeyMap: const {'isMain': 'is_main'});

Map<String, dynamic> _$ProductImageModelToJson(_ProductImageModel instance) =>
    <String, dynamic>{'url': instance.url, 'is_main': instance.isMain};
