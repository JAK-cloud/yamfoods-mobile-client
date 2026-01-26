// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'help_support_model.freezed.dart';
part 'help_support_model.g.dart';

@freezed
sealed class HelpSupportModel with _$HelpSupportModel {
  const HelpSupportModel._();

  const factory HelpSupportModel({
    required int id,
    required String email,
    required String phone1,
    String? phone2,
    String? telegram,
    String? instagram,
    String? facebook,
    String? tiktok,
    String? website,
    required String address,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _HelpSupportModel;

  factory HelpSupportModel.fromJson(Map<String, dynamic> json) =>
      _$HelpSupportModelFromJson(json);
}
