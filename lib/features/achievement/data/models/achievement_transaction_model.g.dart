// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'achievement_transaction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AchievementTransactionModel _$AchievementTransactionModelFromJson(
  Map<String, dynamic> json,
) => _AchievementTransactionModel(
  id: (json['id'] as num).toInt(),
  userId: (json['userId'] as num).toInt(),
  type: json['type'] as String,
  points: (json['points'] as num).toInt(),
  relatedUserId: (json['relatedUserId'] as num?)?.toInt(),
  relatedUserPhone: json['relatedUserPhone'] as String?,
  referenceId: (json['referenceId'] as num?)?.toInt(),
  description: json['description'] as String?,
  createdAt: DateTime.parse(json['createdAt'] as String),
);

Map<String, dynamic> _$AchievementTransactionModelToJson(
  _AchievementTransactionModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'userId': instance.userId,
  'type': instance.type,
  'points': instance.points,
  'relatedUserId': instance.relatedUserId,
  'relatedUserPhone': instance.relatedUserPhone,
  'referenceId': instance.referenceId,
  'description': instance.description,
  'createdAt': instance.createdAt.toIso8601String(),
};
