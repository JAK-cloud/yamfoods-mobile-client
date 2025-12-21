import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_request_data.freezed.dart';

/// Data model for creating or updating an address.
///
/// All fields except [lat] and [lng] are optional.
@freezed
sealed class AddressRequestData with _$AddressRequestData {
  const factory AddressRequestData({
    String? subcity,
    String? street,
    String? building,
    String? houseNo,
    String? note,
    required double lat,
    required double lng,
  }) = _AddressRequestData;
}
