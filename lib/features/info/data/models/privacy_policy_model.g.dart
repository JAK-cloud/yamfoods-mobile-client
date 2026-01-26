// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'privacy_policy_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PrivacyPolicyModel _$PrivacyPolicyModelFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('_PrivacyPolicyModel', json, ($checkedConvert) {
  final val = _PrivacyPolicyModel(
    id: $checkedConvert('id', (v) => (v as num).toInt()),
    title: $checkedConvert('title', (v) => v as String),
    description: $checkedConvert('description', (v) => v as String),
    link: $checkedConvert('link', (v) => v as String?),
    createdAt: $checkedConvert('createdAt', (v) => DateTime.parse(v as String)),
    updatedAt: $checkedConvert('updatedAt', (v) => DateTime.parse(v as String)),
  );
  return val;
});

Map<String, dynamic> _$PrivacyPolicyModelToJson(_PrivacyPolicyModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'link': instance.link,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
