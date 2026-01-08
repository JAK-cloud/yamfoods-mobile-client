// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ErrorModel _$ErrorModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_ErrorModel', json, ($checkedConvert) {
      final val = _ErrorModel(
        code: $checkedConvert('code', (v) => v as String),
        message: $checkedConvert('message', (v) => v as String),
        details: $checkedConvert('details', (v) => v as String?),
        retry: $checkedConvert('retry', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$ErrorModelToJson(_ErrorModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'details': instance.details,
      'retry': instance.retry,
    };
