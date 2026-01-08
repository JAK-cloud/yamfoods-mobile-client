// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RouteModel _$RouteModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_RouteModel', json, ($checkedConvert) {
      final val = _RouteModel(
        timetaken: $checkedConvert('timetaken', (v) => (v as num).toDouble()),
        totalDistance: $checkedConvert(
          'totalDistance',
          (v) => (v as num).toDouble(),
        ),
        direction: $checkedConvert(
          'direction',
          (v) => (v as List<dynamic>)
              .map(
                (e) => (e as List<dynamic>)
                    .map((e) => (e as num).toDouble())
                    .toList(),
              )
              .toList(),
        ),
      );
      return val;
    });

Map<String, dynamic> _$RouteModelToJson(_RouteModel instance) =>
    <String, dynamic>{
      'timetaken': instance.timetaken,
      'totalDistance': instance.totalDistance,
      'direction': instance.direction,
    };
