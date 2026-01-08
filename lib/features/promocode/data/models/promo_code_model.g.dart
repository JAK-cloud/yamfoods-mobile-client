// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promo_code_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PromoCodeModel _$PromoCodeModelFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('_PromoCodeModel', json, ($checkedConvert) {
  final val = _PromoCodeModel(
    id: $checkedConvert('id', (v) => (v as num).toInt()),
    code: $checkedConvert('code', (v) => v as String),
    discount: $checkedConvert('discount', (v) => v as String),
    minOrderQty: $checkedConvert('minOrderAmount', (v) => (v as num).toInt()),
    startDate: $checkedConvert('startDate', (v) => DateTime.parse(v as String)),
    endDate: $checkedConvert('endDate', (v) => DateTime.parse(v as String)),
    createdAt: $checkedConvert('createdAt', (v) => DateTime.parse(v as String)),
    updatedAt: $checkedConvert('updatedAt', (v) => DateTime.parse(v as String)),
  );
  return val;
}, fieldKeyMap: const {'minOrderQty': 'minOrderAmount'});

Map<String, dynamic> _$PromoCodeModelToJson(_PromoCodeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'discount': instance.discount,
      'minOrderAmount': instance.minOrderQty,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
