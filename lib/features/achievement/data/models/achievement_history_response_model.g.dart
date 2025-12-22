// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'achievement_history_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AchievementHistoryResponseModel _$AchievementHistoryResponseModelFromJson(
  Map<String, dynamic> json,
) => _AchievementHistoryResponseModel(
  transaction: (json['transaction'] as List<dynamic>)
      .map(
        (e) => AchievementTransactionModel.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
);

Map<String, dynamic> _$AchievementHistoryResponseModelToJson(
  _AchievementHistoryResponseModel instance,
) => <String, dynamic>{'transaction': instance.transaction};
