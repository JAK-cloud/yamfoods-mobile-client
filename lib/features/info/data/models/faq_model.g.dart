// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'faq_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FaqModel _$FaqModelFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('_FaqModel', json, ($checkedConvert) {
  final val = _FaqModel(
    id: $checkedConvert('id', (v) => (v as num).toInt()),
    question: $checkedConvert('question', (v) => v as String),
    answer: $checkedConvert('answer', (v) => v as String),
    createdAt: $checkedConvert('createdAt', (v) => DateTime.parse(v as String)),
    updatedAt: $checkedConvert('updatedAt', (v) => DateTime.parse(v as String)),
  );
  return val;
});

Map<String, dynamic> _$FaqModelToJson(_FaqModel instance) => <String, dynamic>{
  'id': instance.id,
  'question': instance.question,
  'answer': instance.answer,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
};
