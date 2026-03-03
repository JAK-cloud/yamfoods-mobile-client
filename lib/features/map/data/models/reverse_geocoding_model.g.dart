// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reverse_geocoding_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReverseGeocodingModel _$ReverseGeocodingModelFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  '_ReverseGeocodingModel',
  json,
  ($checkedConvert) {
    final val = _ReverseGeocodingModel(
      formattedAddresses: $checkedConvert(
        'results',
        (v) => _resultsFromJson(v as List),
      ),
    );
    return val;
  },
  fieldKeyMap: const {'formattedAddresses': 'results'},
);

Map<String, dynamic> _$ReverseGeocodingModelToJson(
  _ReverseGeocodingModel instance,
) => <String, dynamic>{'results': instance.formattedAddresses};
