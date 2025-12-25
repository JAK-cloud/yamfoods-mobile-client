// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaymentModel _$PaymentModelFromJson(Map<String, dynamic> json) =>
    _PaymentModel(
      id: (json['id'] as num).toInt(),
      orderId: (json['orderId'] as num).toInt(),
      method: json['method'] as String,
      transactionId: json['transactionId'] as String?,
      amount: parseDouble(json['amount']),
      date: DateTime.parse(json['date'] as String),
    );

Map<String, dynamic> _$PaymentModelToJson(_PaymentModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'orderId': instance.orderId,
      'method': instance.method,
      'transactionId': instance.transactionId,
      'amount': instance.amount,
      'date': instance.date.toIso8601String(),
    };
