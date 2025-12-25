import 'package:freezed_annotation/freezed_annotation.dart';

part 'promo_banner.freezed.dart';

/// Promo banner entity representing a promotional banner.
@freezed
sealed class PromoBanner with _$PromoBanner {
  const factory PromoBanner({
    required int id,
    required String imageUrl,
    required String title,
    String? subtitle,
    required String status,
    required DateTime startDate,
    required DateTime endDate,
    int? productId,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _PromoBanner;
}
