// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OrderModel _$OrderModelFromJson(Map<String, dynamic> json) => _OrderModel(
  id: (json['id'] as num).toInt(),
  userId: (json['userId'] as num?)?.toInt(),
  userPhone: json['userPhone'] as String,
  branchId: (json['branchId'] as num).toInt(),
  qrCode: json['qrCode'] as String,
  status: json['status'] as String,
  type: json['type'] as String,
  delivererId: (json['delivererId'] as num).toInt(),
  delivererPhone: json['delivererPhone'] as String,
  scheduledAt: json['scheduledAt'] == null
      ? null
      : DateTime.parse(json['scheduledAt'] as String),
  note: json['note'] as String?,
  quantity: (json['quantity'] as num).toInt(),
  subtotal: parseDouble(json['subtotal']),
  vatTotal: parseDouble(json['vatTotal']),
  deliveryFee: parseDouble(json['deliveryFee']),
  pointUsed: (json['pointUsed'] as num?)?.toInt(),
  pointDiscount: parseDouble(json['pointDiscount']),
  promoCode: json['promoCode'] as String?,
  promoCodeDiscount: parseDouble(json['promoCodeDiscount']),
  discountTotal: parseDouble(json['discountTotal']),
  totalAmount: parseDouble(json['totalAmount']),
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$OrderModelToJson(_OrderModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'userPhone': instance.userPhone,
      'branchId': instance.branchId,
      'qrCode': instance.qrCode,
      'status': instance.status,
      'type': instance.type,
      'delivererId': instance.delivererId,
      'delivererPhone': instance.delivererPhone,
      'scheduledAt': instance.scheduledAt?.toIso8601String(),
      'note': instance.note,
      'quantity': instance.quantity,
      'subtotal': instance.subtotal,
      'vatTotal': instance.vatTotal,
      'deliveryFee': instance.deliveryFee,
      'pointUsed': instance.pointUsed,
      'pointDiscount': instance.pointDiscount,
      'promoCode': instance.promoCode,
      'promoCodeDiscount': instance.promoCodeDiscount,
      'discountTotal': instance.discountTotal,
      'totalAmount': instance.totalAmount,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
