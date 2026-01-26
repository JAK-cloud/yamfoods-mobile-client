// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'privacy_policy_model.freezed.dart';
part 'privacy_policy_model.g.dart';

@freezed
sealed class PrivacyPolicyModel with _$PrivacyPolicyModel {
  const PrivacyPolicyModel._();

  const factory PrivacyPolicyModel({
    required int id,
    required String title,
    required String description,
    String? link,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _PrivacyPolicyModel;

  factory PrivacyPolicyModel.fromJson(Map<String, dynamic> json) =>
      _$PrivacyPolicyModelFromJson(json);
}
