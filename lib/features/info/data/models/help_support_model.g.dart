// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'help_support_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HelpSupportModel _$HelpSupportModelFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('_HelpSupportModel', json, ($checkedConvert) {
  final val = _HelpSupportModel(
    id: $checkedConvert('id', (v) => (v as num).toInt()),
    email: $checkedConvert('email', (v) => v as String),
    phone1: $checkedConvert('phone1', (v) => v as String),
    phone2: $checkedConvert('phone2', (v) => v as String?),
    telegram: $checkedConvert('telegram', (v) => v as String?),
    instagram: $checkedConvert('instagram', (v) => v as String?),
    facebook: $checkedConvert('facebook', (v) => v as String?),
    tiktok: $checkedConvert('tiktok', (v) => v as String?),
    website: $checkedConvert('website', (v) => v as String?),
    address: $checkedConvert('address', (v) => v as String),
    createdAt: $checkedConvert('createdAt', (v) => DateTime.parse(v as String)),
    updatedAt: $checkedConvert('updatedAt', (v) => DateTime.parse(v as String)),
  );
  return val;
});

Map<String, dynamic> _$HelpSupportModelToJson(_HelpSupportModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'phone1': instance.phone1,
      'phone2': instance.phone2,
      'telegram': instance.telegram,
      'instagram': instance.instagram,
      'facebook': instance.facebook,
      'tiktok': instance.tiktok,
      'website': instance.website,
      'address': instance.address,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
