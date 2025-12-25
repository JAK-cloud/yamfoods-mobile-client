import '../../domain/entities/promo_banner.dart';
import '../models/promo_banner_model.dart';

extension PromoBannerModelMapper on PromoBannerModel {
  /// Converts [PromoBannerModel] to [PromoBanner] domain entity.
  PromoBanner toDomain() {
    return PromoBanner(
      id: id,
      imageUrl: imageUrl,
      title: title,
      subtitle: subtitle,
      status: status,
      startDate: startDate,
      endDate: endDate,
      productId: productId,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}
