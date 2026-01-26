// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_version_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AppVersionModel _$AppVersionModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_AppVersionModel', json, ($checkedConvert) {
      final val = _AppVersionModel(
        version: $checkedConvert('version', (v) => v as String),
        buildNumber: $checkedConvert('buildNumber', (v) => (v as num).toInt()),
        mustBeBlocking: $checkedConvert('mustBeBlocking', (v) => v as bool),
        playstoreLink: $checkedConvert('playstoreLink', (v) => v as String?),
        appstoreLink: $checkedConvert('appstoreLink', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$AppVersionModelToJson(_AppVersionModel instance) =>
    <String, dynamic>{
      'version': instance.version,
      'buildNumber': instance.buildNumber,
      'mustBeBlocking': instance.mustBeBlocking,
      'playstoreLink': instance.playstoreLink,
      'appstoreLink': instance.appstoreLink,
    };
