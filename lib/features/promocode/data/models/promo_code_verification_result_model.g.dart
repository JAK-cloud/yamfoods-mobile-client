// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promo_code_verification_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PromoCodeVerificationResultModel _$PromoCodeVerificationResultModelFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('_PromoCodeVerificationResultModel', json, (
  $checkedConvert,
) {
  final val = _PromoCodeVerificationResultModel(
    isValid: $checkedConvert('isValid', (v) => v as bool),
    discount: $checkedConvert('discount', (v) => v as String),
    promo: $checkedConvert(
      'promo',
      (v) => PromoCodeModel.fromJson(v as Map<String, dynamic>),
    ),
  );
  return val;
});

Map<String, dynamic> _$PromoCodeVerificationResultModelToJson(
  _PromoCodeVerificationResultModel instance,
) => <String, dynamic>{
  'isValid': instance.isValid,
  'discount': instance.discount,
  'promo': instance.promo.toJson(),
};
