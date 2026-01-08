// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'achievement_point_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AchievementPointModel _$AchievementPointModelFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('_AchievementPointModel', json, ($checkedConvert) {
  final val = _AchievementPointModel(
    point: $checkedConvert('point', (v) => (v as num).toInt()),
  );
  return val;
});

Map<String, dynamic> _$AchievementPointModelToJson(
  _AchievementPointModel instance,
) => <String, dynamic>{'point': instance.point};
