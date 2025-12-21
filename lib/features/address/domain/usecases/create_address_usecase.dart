import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/utils/validators.dart';
import '../entities/address.dart';
import '../entities/address_request_data.dart';
import '../repositories/address_repository.dart';

class CreateAddressUsecase {
  final AddressRepository _repository;

  const CreateAddressUsecase(this._repository);

  Future<Either<Failure, Address>> call(AddressRequestData data) async {
    final validationError = Validators.validateCoordinates(data.lat, data.lng);
    if (validationError != null) {
      return Left(validationError);
    }

    return await _repository.createAddress(data);
  }
}
