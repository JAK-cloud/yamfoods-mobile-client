import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../../domain/entities/address_request_data.dart';
import '../models/address_model.dart';

abstract class AddressRemoteDataSource {
  Future<Either<Failure, List<AddressModel>>> getAddresses();
  Future<Either<Failure, AddressModel>> createAddress(AddressRequestData data);
  Future<Either<Failure, AddressModel>> updateAddress({
    required int id,
    required AddressRequestData data,
  });
  Future<Either<Failure, void>> deleteAddress(int id);
}
