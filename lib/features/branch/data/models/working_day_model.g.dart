// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'working_day_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WorkingDayModel _$WorkingDayModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_WorkingDayModel', json, ($checkedConvert) {
      final val = _WorkingDayModel(
        label: $checkedConvert('label', (v) => v as String),
        value: $checkedConvert('value', (v) => v as bool),
      );
      return val;
    });

Map<String, dynamic> _$WorkingDayModelToJson(_WorkingDayModel instance) =>
    <String, dynamic>{'label': instance.label, 'value': instance.value};
