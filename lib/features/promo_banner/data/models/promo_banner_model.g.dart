// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promo_banner_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PromoBannerModel _$PromoBannerModelFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('_PromoBannerModel', json, ($checkedConvert) {
  final val = _PromoBannerModel(
    id: $checkedConvert('id', (v) => (v as num).toInt()),
    imageUrl: $checkedConvert('imageUrl', (v) => v as String),
    title: $checkedConvert('title', (v) => v as String),
    subtitle: $checkedConvert('subtitle', (v) => v as String?),
    status: $checkedConvert('status', (v) => v as String),
    startDate: $checkedConvert('startDate', (v) => DateTime.parse(v as String)),
    endDate: $checkedConvert('endDate', (v) => DateTime.parse(v as String)),
    productId: $checkedConvert('productId', (v) => (v as num?)?.toInt()),
    createdAt: $checkedConvert('createdAt', (v) => DateTime.parse(v as String)),
    updatedAt: $checkedConvert('updatedAt', (v) => DateTime.parse(v as String)),
  );
  return val;
});

Map<String, dynamic> _$PromoBannerModelToJson(_PromoBannerModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'imageUrl': instance.imageUrl,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'status': instance.status,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'productId': instance.productId,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
