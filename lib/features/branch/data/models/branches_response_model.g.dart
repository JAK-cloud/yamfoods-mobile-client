// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'branches_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BranchesResponseModel _$BranchesResponseModelFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('_BranchesResponseModel', json, ($checkedConvert) {
  final val = _BranchesResponseModel(
    branches: $checkedConvert(
      'branches',
      (v) => (v as List<dynamic>)
          .map((e) => BranchModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$BranchesResponseModelToJson(
  _BranchesResponseModel instance,
) => <String, dynamic>{
  'branches': instance.branches.map((e) => e.toJson()).toList(),
};
