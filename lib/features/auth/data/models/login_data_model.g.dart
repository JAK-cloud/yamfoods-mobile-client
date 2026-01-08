// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LoginDataModel _$LoginDataModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_LoginDataModel', json, ($checkedConvert) {
      final val = _LoginDataModel(
        message: $checkedConvert('message', (v) => v as String),
        user: $checkedConvert(
          'user',
          (v) => UserModel.fromJson(v as Map<String, dynamic>),
        ),
        accessToken: $checkedConvert('accessToken', (v) => v as String),
        refreshToken: $checkedConvert('refreshToken', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$LoginDataModelToJson(_LoginDataModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'user': instance.user.toJson(),
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
    };
