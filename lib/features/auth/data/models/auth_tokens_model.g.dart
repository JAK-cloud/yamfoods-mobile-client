// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_tokens_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuthTokensModel _$AuthTokensModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_AuthTokensModel', json, ($checkedConvert) {
      final val = _AuthTokensModel(
        accessToken: $checkedConvert('accessToken', (v) => v as String),
        refreshToken: $checkedConvert('refreshToken', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$AuthTokensModelToJson(_AuthTokensModel instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
    };
