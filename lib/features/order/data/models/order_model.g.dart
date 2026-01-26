// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OrderModel _$OrderModelFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('_OrderModel', json, ($checkedConvert) {
  final val = _OrderModel(
    id: $checkedConvert('id', (v) => (v as num).toInt()),
    userId: $checkedConvert('userId', (v) => (v as num?)?.toInt()),
    userPhone: $checkedConvert('userPhone', (v) => v as String),
    branchId: $checkedConvert('branchId', (v) => (v as num).toInt()),
    qrCode: $checkedConvert('qrCode', (v) => v as String),
    status: $checkedConvert('status', (v) => v as String),
    type: $checkedConvert('type', (v) => v as String),
    delivererId: $checkedConvert('delivererId', (v) => (v as num?)?.toInt()),
    delivererPhone: $checkedConvert('delivererPhone', (v) => v as String?),
    scheduledAt: $checkedConvert(
      'scheduledAt',
      (v) => v == null ? null : DateTime.parse(v as String),
    ),
    note: $checkedConvert('note', (v) => v as String?),
    quantity: $checkedConvert('quantity', (v) => (v as num).toInt()),
    subtotal: $checkedConvert('subtotal', (v) => parseDouble(v)),
    vatTotal: $checkedConvert('vatTotal', (v) => parseDouble(v)),
    deliveryFee: $checkedConvert('deliveryFee', (v) => parseDouble(v)),
    pointUsed: $checkedConvert('pointUsed', (v) => (v as num?)?.toInt()),
    pointDiscount: $checkedConvert('pointDiscount', (v) => parseDouble(v)),
    promoCode: $checkedConvert('promoCode', (v) => v as String?),
    promoCodeDiscount: $checkedConvert(
      'promoCodeDiscount',
      (v) => parseDouble(v),
    ),
    discountTotal: $checkedConvert('discountTotal', (v) => parseDouble(v)),
    totalAmount: $checkedConvert('totalAmount', (v) => parseDouble(v)),
    branchLocation: $checkedConvert(
      'branchLocation',
      (v) => OrderLocationModel.fromJson(v as Map<String, dynamic>),
    ),
    deliveryLocation: $checkedConvert(
      'deliveryLocation',
      (v) => OrderLocationModel.fromJson(v as Map<String, dynamic>),
    ),
    createdAt: $checkedConvert('createdAt', (v) => DateTime.parse(v as String)),
    updatedAt: $checkedConvert('updatedAt', (v) => DateTime.parse(v as String)),
  );
  return val;
});

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
      'branchLocation': instance.branchLocation.toJson(),
      'deliveryLocation': instance.deliveryLocation.toJson(),
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
