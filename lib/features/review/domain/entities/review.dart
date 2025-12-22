import 'package:freezed_annotation/freezed_annotation.dart';

part 'review.freezed.dart';

@freezed
sealed class Review with _$Review {
  const factory Review({
    required int id,
    required int productId,
    required int userId,
    required int rating,
    required String comment,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Review;
}
