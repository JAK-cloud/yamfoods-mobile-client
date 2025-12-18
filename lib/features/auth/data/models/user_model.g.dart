// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserModel _$UserModelFromJson(Map<String, dynamic> json) => _UserModel(
  id: (json['id'] as num).toInt(),
  imageUrl: json['imageUrl'] as String?,
  name: json['name'] as String,
  phone: json['phone'] as String?,
  role: json['role'] as String,
  email: json['email'] as String,
  phoneVerified: (json['phoneVerified'] as num).toInt(),
  googleId: json['googleId'] as String?,
  provider: json['provider'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$UserModelToJson(_UserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'imageUrl': instance.imageUrl,
      'name': instance.name,
      'phone': instance.phone,
      'role': instance.role,
      'email': instance.email,
      'phoneVerified': instance.phoneVerified,
      'googleId': instance.googleId,
      'provider': instance.provider,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
