// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'branch_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BranchModel _$BranchModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_BranchModel', json, ($checkedConvert) {
      final val = _BranchModel(
        id: $checkedConvert('id', (v) => (v as num).toInt()),
        name: $checkedConvert('name', (v) => v as String),
        location: $checkedConvert('location', (v) => v as String),
        address: $checkedConvert('address', (v) => v as String),
        isActive: $checkedConvert('isActive', (v) => (v as num).toInt()),
        contactPhone: $checkedConvert('contactPhone', (v) => v as String),
        openingHour: $checkedConvert('openingHour', (v) => v as String),
        closingHour: $checkedConvert('closingHour', (v) => v as String),
        activeWorkingDays: $checkedConvert(
          'activeWorkingDays',
          (v) => (v as List<dynamic>)
              .map((e) => WorkingDayModel.fromJson(e as Map<String, dynamic>))
              .toList(),
        ),
        launchDate: $checkedConvert(
          'launchDate',
          (v) => DateTime.parse(v as String),
        ),
        createdDate: $checkedConvert(
          'createdDate',
          (v) => DateTime.parse(v as String),
        ),
        lastUpdateDate: $checkedConvert(
          'lastUpdateDate',
          (v) => DateTime.parse(v as String),
        ),
        createdBy: $checkedConvert('createdBy', (v) => (v as num).toInt()),
      );
      return val;
    });

Map<String, dynamic> _$BranchModelToJson(_BranchModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'location': instance.location,
      'address': instance.address,
      'isActive': instance.isActive,
      'contactPhone': instance.contactPhone,
      'openingHour': instance.openingHour,
      'closingHour': instance.closingHour,
      'activeWorkingDays': instance.activeWorkingDays
          .map((e) => e.toJson())
          .toList(),
      'launchDate': instance.launchDate.toIso8601String(),
      'createdDate': instance.createdDate.toIso8601String(),
      'lastUpdateDate': instance.lastUpdateDate.toIso8601String(),
      'createdBy': instance.createdBy,
    };
