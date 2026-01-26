// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_location_model.freezed.dart';
part 'order_location_model.g.dart';

@freezed
sealed class OrderLocationModel with _$OrderLocationModel {
  const factory OrderLocationModel({double? lat, double? lng}) =
      _OrderLocationModel;

  factory OrderLocationModel.fromJson(Map<String, dynamic> json) =>
      _$OrderLocationModelFromJson(json);
}
