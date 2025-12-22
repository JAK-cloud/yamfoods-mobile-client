import '../../domain/entities/review.dart';
import '../models/review_model.dart';

extension ReviewModelMapper on ReviewModel {
  /// Converts data model to domain entity.
  Review toDomain() {
    return Review(
      id: id,
      productId: productId,
      userId: userId,
      rating: rating,
      comment: comment,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}
