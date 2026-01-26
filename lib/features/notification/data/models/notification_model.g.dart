// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NotificationModel _$NotificationModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_NotificationModel', json, ($checkedConvert) {
      final val = _NotificationModel(
        id: $checkedConvert('id', (v) => (v as num).toInt()),
        type: $checkedConvert('type', (v) => v as String),
        title: $checkedConvert('title', (v) => v as String),
        body: $checkedConvert('body', (v) => v as String),
        isRead: $checkedConvert('isRead', (v) => v as bool?),
        orderId: $checkedConvert('orderId', (v) => (v as num?)?.toInt()),
        productId: $checkedConvert('productId', (v) => (v as num?)?.toInt()),
        createdAt: $checkedConvert(
          'createdAt',
          (v) => DateTime.parse(v as String),
        ),
      );
      return val;
    });

Map<String, dynamic> _$NotificationModelToJson(_NotificationModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'title': instance.title,
      'body': instance.body,
      'isRead': instance.isRead,
      'orderId': instance.orderId,
      'productId': instance.productId,
      'createdAt': instance.createdAt.toIso8601String(),
    };
