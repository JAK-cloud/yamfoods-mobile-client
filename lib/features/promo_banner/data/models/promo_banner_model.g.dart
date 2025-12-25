// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promo_banner_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PromoBannerModel _$PromoBannerModelFromJson(Map<String, dynamic> json) =>
    _PromoBannerModel(
      id: (json['id'] as num).toInt(),
      imageUrl: json['imageUrl'] as String,
      title: json['title'] as String,
      subtitle: json['subtitle'] as String?,
      status: json['status'] as String,
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      productId: (json['productId'] as num?)?.toInt(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

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
