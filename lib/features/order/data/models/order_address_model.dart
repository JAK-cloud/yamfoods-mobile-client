// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/utils/string_to_double.dart';
import '../../../../shared/models/address_location_model.dart';

part 'order_address_model.freezed.dart';
part 'order_address_model.g.dart';

@freezed
sealed class OrderAddressModel with _$OrderAddressModel {
  const OrderAddressModel._();

  const factory OrderAddressModel({
    required int id,
    required int orderId,
    String? subcity,
    String? street,
    String? building,
    String? houseNo,
    String? note,
    @JsonKey(fromJson: parseDouble)  double? lat,
    @JsonKey(fromJson: parseDouble) double? lng,
    AddressLocationModel? location,
    required DateTime createdAt,
  }) = _OrderAddressModel;

  factory OrderAddressModel.fromJson(Map<String, dynamic> json) =>
      _$OrderAddressModelFromJson(json);

}
