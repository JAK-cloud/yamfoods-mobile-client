import '../../domain/entities/review.dart';
import '../models/review_model.dart';

extension ReviewModelMapper on ReviewModel {
  /// Converts data model to domain entity.
  Review toDomain() {
    return Review(
      id: id,
      productId: productId,
      reviewerId: reviewerId,
      reviewerName: reviewerName,
      rating: rating,
      comment: comment,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}
