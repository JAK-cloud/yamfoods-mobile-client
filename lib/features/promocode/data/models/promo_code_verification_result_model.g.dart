// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promo_code_verification_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PromoCodeVerificationResultModel _$PromoCodeVerificationResultModelFromJson(
  Map<String, dynamic> json,
) => _PromoCodeVerificationResultModel(
  isValid: json['isValid'] as bool,
  discount: json['discount'] as String,
  promo: PromoCodeModel.fromJson(json['promo'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PromoCodeVerificationResultModelToJson(
  _PromoCodeVerificationResultModel instance,
) => <String, dynamic>{
  'isValid': instance.isValid,
  'discount': instance.discount,
  'promo': instance.promo,
};
