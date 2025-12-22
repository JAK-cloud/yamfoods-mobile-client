// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promo_code_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PromoCodeModel _$PromoCodeModelFromJson(Map<String, dynamic> json) =>
    _PromoCodeModel(
      id: (json['id'] as num).toInt(),
      code: json['code'] as String,
      discount: json['discount'] as String,
      minOrderAmount: json['minOrderAmount'] as String,
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$PromoCodeModelToJson(_PromoCodeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'discount': instance.discount,
      'minOrderAmount': instance.minOrderAmount,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
