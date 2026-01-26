// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'terms_and_conditions_model.freezed.dart';
part 'terms_and_conditions_model.g.dart';

@freezed
sealed class TermsAndConditionsModel with _$TermsAndConditionsModel {
  const TermsAndConditionsModel._();

  const factory TermsAndConditionsModel({
    required int id,
    required String title,
    required String description,
    String? link,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _TermsAndConditionsModel;

  factory TermsAndConditionsModel.fromJson(Map<String, dynamic> json) =>
      _$TermsAndConditionsModelFromJson(json);
}
