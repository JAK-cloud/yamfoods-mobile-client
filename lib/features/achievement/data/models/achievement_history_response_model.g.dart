// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'achievement_history_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AchievementHistoryResponseModel _$AchievementHistoryResponseModelFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('_AchievementHistoryResponseModel', json, (
  $checkedConvert,
) {
  final val = _AchievementHistoryResponseModel(
    transaction: $checkedConvert(
      'transaction',
      (v) => (v as List<dynamic>)
          .map(
            (e) =>
                AchievementTransactionModel.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$AchievementHistoryResponseModelToJson(
  _AchievementHistoryResponseModel instance,
) => <String, dynamic>{
  'transaction': instance.transaction.map((e) => e.toJson()).toList(),
};
