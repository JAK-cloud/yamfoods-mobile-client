import 'package:freezed_annotation/freezed_annotation.dart';

part 'address.freezed.dart';

@freezed
sealed class Address with _$Address {
  const factory Address({
    required int id,
    required int userId,
    required String subcity,
    required String street,
    required String building,
    required String houseNo,
    required String note,
    required String lat,
    required String lng,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Address;
}
