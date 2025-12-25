// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'promo_banner_model.freezed.dart';
part 'promo_banner_model.g.dart';

/// Promo banner model for JSON serialization.
@freezed
sealed class PromoBannerModel with _$PromoBannerModel {
  const factory PromoBannerModel({
    required int id,
    @JsonKey(name: 'imageUrl') required String imageUrl,
    required String title,
    String? subtitle,
    required String status,
    @JsonKey(name: 'startDate') required DateTime startDate,
    @JsonKey(name: 'endDate') required DateTime endDate,
    @JsonKey(name: 'productId') int? productId,
    @JsonKey(name: 'createdAt') required DateTime createdAt,
    @JsonKey(name: 'updatedAt') required DateTime updatedAt,
  }) = _PromoBannerModel;

  factory PromoBannerModel.fromJson(Map<String, dynamic> json) =>
      _$PromoBannerModelFromJson(json);
}
