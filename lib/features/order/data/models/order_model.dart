// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/utils/string_to_double.dart';

part 'order_model.freezed.dart';
part 'order_model.g.dart';



@freezed
sealed class OrderModel with _$OrderModel {
  const OrderModel._();

  const factory OrderModel({
    required int id,
    int? userId,
    required String userPhone,
    required int branchId,
    required String qrCode,
    required String status,
    required String type,
    int? delivererId, // nullable because this order class intended for customer not for deliverer. for deliverer it should be required
    String? delivererPhone,
    DateTime? scheduledAt,
    String? note,
    required int quantity,
    @JsonKey(fromJson: parseDouble) required double subtotal,
    @JsonKey(fromJson: parseDouble) double? vatTotal,
    @JsonKey(fromJson: parseDouble) required double deliveryFee,
    int? pointUsed,
    @JsonKey(fromJson: parseDouble) double? pointDiscount,
    String? promoCode,
    @JsonKey(fromJson: parseDouble) double? promoCodeDiscount,
    @JsonKey(fromJson: parseDouble) double? discountTotal,
    @JsonKey(fromJson: parseDouble) required double totalAmount,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _OrderModel;

  factory OrderModel.fromJson(Map<String, dynamic> json) =>
      _$OrderModelFromJson(json);
}