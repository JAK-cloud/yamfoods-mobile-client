// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_model.freezed.dart';
part 'address_model.g.dart';

@freezed
sealed class AddressModel with _$AddressModel {
  const factory AddressModel({
    required int id,
    @JsonKey(name: 'userId') required int userId,
    @Default('N/A') String subcity,
    @Default('N/A') String street,
    @Default('N/A') String building,
    @JsonKey(name: 'houseNo') @Default('N/A') String houseNo,
    @Default('N/A') String note,
    required String lat,
    required String lng,
    @JsonKey(name: 'createdAt') required DateTime createdAt,
    @JsonKey(name: 'updatedAt') required DateTime updatedAt,
  }) = _AddressModel;

  factory AddressModel.fromJson(Map<String, dynamic> json) =>
      _$AddressModelFromJson(json);
}
