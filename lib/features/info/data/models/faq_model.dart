// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'faq_model.freezed.dart';
part 'faq_model.g.dart';

@freezed
sealed class FaqModel with _$FaqModel {
  const FaqModel._();

  const factory FaqModel({
    required int id,
    required String question,
    required String answer,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _FaqModel;

  factory FaqModel.fromJson(Map<String, dynamic> json) =>
      _$FaqModelFromJson(json);
}
