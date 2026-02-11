// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'query_order_payment_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_QueryOrderPaymentResponse _$QueryOrderPaymentResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('_QueryOrderPaymentResponse', json, ($checkedConvert) {
  final val = _QueryOrderPaymentResponse(
    status: $checkedConvert('status', (v) => v as String),
  );
  return val;
});

Map<String, dynamic> _$QueryOrderPaymentResponseToJson(
  _QueryOrderPaymentResponse instance,
) => <String, dynamic>{'status': instance.status};
