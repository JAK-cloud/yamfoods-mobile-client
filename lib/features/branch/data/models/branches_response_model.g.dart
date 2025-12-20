// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'branches_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BranchesResponseModel _$BranchesResponseModelFromJson(
  Map<String, dynamic> json,
) => _BranchesResponseModel(
  branches: (json['branches'] as List<dynamic>)
      .map((e) => BranchModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$BranchesResponseModelToJson(
  _BranchesResponseModel instance,
) => <String, dynamic>{'branches': instance.branches};
