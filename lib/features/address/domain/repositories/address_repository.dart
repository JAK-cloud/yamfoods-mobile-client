import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../entities/address.dart';
import '../entities/address_request_data.dart';

abstract class AddressRepository {
  Future<Either<Failure, List<Address>>> getAddresses();
  Future<Either<Failure, Address>> createAddress(AddressRequestData data);
  Future<Either<Failure, Address>> updateAddress({
    required int id,
    required AddressRequestData data,
  });
  Future<Either<Failure, void>> deleteAddress(int id);
}
