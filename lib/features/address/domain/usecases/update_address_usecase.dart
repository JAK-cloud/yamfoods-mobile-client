import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/utils/validators.dart';
import '../entities/address.dart';
import '../entities/address_request_data.dart';
import '../repositories/address_repository.dart';

class UpdateAddressUsecase {
  final AddressRepository _repository;

  const UpdateAddressUsecase(this._repository);

  Future<Either<Failure, Address>> call({
    required int id,
    required AddressRequestData data,
  }) async {
    final validationError = Validators.validateCoordinates(data.lat, data.lng);
    if (validationError != null) {
      return Left(validationError);
    }

    return await _repository.updateAddress(id: id, data: data);
  }
}
