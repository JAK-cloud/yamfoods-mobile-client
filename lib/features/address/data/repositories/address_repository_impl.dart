import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../../domain/entities/address.dart';
import '../../domain/entities/address_request_data.dart';
import '../../domain/repositories/address_repository.dart';
import '../datasources/address_remote_data_source.dart';
import '../mappers/address_mapper.dart';

/// Maps data models to domain entities and coordinates data sources.
///
/// Errors from data sources are propagated without transformation.
class AddressRepositoryImpl implements AddressRepository {
  final AddressRemoteDataSource _remoteDataSource;

  const AddressRepositoryImpl(this._remoteDataSource);

  @override
  Future<Either<Failure, List<Address>>> getAddresses() async {
    final result = await _remoteDataSource.getAddresses();

    return result.fold((failure) => Left(failure), (addressModels) {
      final domainAddresses = addressModels.map((a) => a.toDomain()).toList();
      return Right(domainAddresses);
    });
  }

  @override
  Future<Either<Failure, Address>> createAddress(
    AddressRequestData data) async {
    final result = await _remoteDataSource.createAddress(data);

    return result.fold(
      (failure) => Left(failure),
      (addressModel) => Right(addressModel.toDomain()),
    );
  }

  @override
  Future<Either<Failure, Address>> updateAddress({
    required int id,
    required AddressRequestData data,
  }) async {
    final result = await _remoteDataSource.updateAddress(id: id, data: data);

    return result.fold(
      (failure) => Left(failure),
      (addressModel) => Right(addressModel.toDomain()),
    );
  }

  @override
  Future<Either<Failure, void>> deleteAddress(int id) async {
    return await _remoteDataSource.deleteAddress(id);
  }
}
