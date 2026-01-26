// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_configuration_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AppConfigurationModel _$AppConfigurationModelFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('_AppConfigurationModel', json, ($checkedConvert) {
  final val = _AppConfigurationModel(
    id: $checkedConvert('id', (v) => (v as num).toInt()),
    pointConversionRate: $checkedConvert(
      'pointConversionRate',
      (v) => parseDouble(v),
    ),
    minimumPointsRedemption: $checkedConvert(
      'minimumPointsRedemption',
      (v) => (v as num).toInt(),
    ),
    maxCartItems: $checkedConvert('maxCartItems', (v) => (v as num).toInt()),
    maxQuantityPerItem: $checkedConvert(
      'maxQuantityPerItem',
      (v) => (v as num).toInt(),
    ),
    deliveryFeePerKm: $checkedConvert(
      'deliveryFeePerKm',
      (v) => parseDouble(v),
    ),
    maxOrderSchedulingDays: $checkedConvert(
      'maxOrderSchedulingDays',
      (v) => (v as num).toInt(),
    ),
    createdAt: $checkedConvert('createdAt', (v) => DateTime.parse(v as String)),
    updatedAt: $checkedConvert('updatedAt', (v) => DateTime.parse(v as String)),
    appVersion: $checkedConvert(
      'appVersion',
      (v) => AppVersionModel.fromJson(v as Map<String, dynamic>),
    ),
  );
  return val;
});

Map<String, dynamic> _$AppConfigurationModelToJson(
  _AppConfigurationModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'pointConversionRate': instance.pointConversionRate,
  'minimumPointsRedemption': instance.minimumPointsRedemption,
  'maxCartItems': instance.maxCartItems,
  'maxQuantityPerItem': instance.maxQuantityPerItem,
  'deliveryFeePerKm': instance.deliveryFeePerKm,
  'maxOrderSchedulingDays': instance.maxOrderSchedulingDays,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
  'appVersion': instance.appVersion.toJson(),
};
