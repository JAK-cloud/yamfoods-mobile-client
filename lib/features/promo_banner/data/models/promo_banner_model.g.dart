// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promo_banner_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PromoBannerModel _$PromoBannerModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_PromoBannerModel', json, ($checkedConvert) {
      final val = _PromoBannerModel(
        id: $checkedConvert('id', (v) => (v as num).toInt()),
        imageUrl: $checkedConvert('imageUrl', (v) => v as String),
        productId: $checkedConvert('productId', (v) => (v as num?)?.toInt()),
      );
      return val;
    });

Map<String, dynamic> _$PromoBannerModelToJson(_PromoBannerModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'imageUrl': instance.imageUrl,
      'productId': instance.productId,
    };
