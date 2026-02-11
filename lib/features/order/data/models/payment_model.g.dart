// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaymentModel _$PaymentModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_PaymentModel', json, ($checkedConvert) {
      final val = _PaymentModel(
        id: $checkedConvert('id', (v) => (v as num).toInt()),
        orderId: $checkedConvert('orderId', (v) => (v as num).toInt()),
        method: $checkedConvert('method', (v) => v as String),
        status: $checkedConvert('status', (v) => v as String),
        transId: $checkedConvert('transId', (v) => v as String?),
        telebirrPaymentOrderId: $checkedConvert(
          'telebirrPaymentOrderId',
          (v) => v as String?,
        ),
        amount: $checkedConvert('amount', (v) => parseDouble(v)),
        transTime: $checkedConvert(
          'transTime',
          (v) => v == null ? null : DateTime.parse(v as String),
        ),
        currency: $checkedConvert('currency', (v) => v as String?),
        chapaTxnRef: $checkedConvert('chapaTxnRef', (v) => v as String?),
        date: $checkedConvert('date', (v) => DateTime.parse(v as String)),
      );
      return val;
    });

Map<String, dynamic> _$PaymentModelToJson(_PaymentModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'orderId': instance.orderId,
      'method': instance.method,
      'status': instance.status,
      'transId': instance.transId,
      'telebirrPaymentOrderId': instance.telebirrPaymentOrderId,
      'amount': instance.amount,
      'transTime': instance.transTime?.toIso8601String(),
      'currency': instance.currency,
      'chapaTxnRef': instance.chapaTxnRef,
      'date': instance.date.toIso8601String(),
    };
