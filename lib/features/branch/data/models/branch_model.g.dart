// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'branch_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BranchModel _$BranchModelFromJson(Map<String, dynamic> json) => _BranchModel(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  location: json['location'] as String,
  address: json['address'] as String,
  isActive: (json['isActive'] as num).toInt(),
  contactPhone: json['contactPhone'] as String,
  openingHour: json['openingHour'] as String,
  closingHour: json['closingHour'] as String,
  activeWorkingDays: (json['activeWorkingDays'] as List<dynamic>)
      .map((e) => WorkingDayModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  launchDate: DateTime.parse(json['launchDate'] as String),
  createdDate: DateTime.parse(json['createdDate'] as String),
  lastUpdateDate: DateTime.parse(json['lastUpdateDate'] as String),
  createdBy: (json['createdBy'] as num).toInt(),
);

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
      'activeWorkingDays': instance.activeWorkingDays,
      'launchDate': instance.launchDate.toIso8601String(),
      'createdDate': instance.createdDate.toIso8601String(),
      'lastUpdateDate': instance.lastUpdateDate.toIso8601String(),
      'createdBy': instance.createdBy,
    };
