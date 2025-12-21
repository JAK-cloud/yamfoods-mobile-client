import 'package:dartz/dartz.dart';

import '../../../../core/errors/error_handler.dart';
import '../../../../core/errors/failure.dart';
import '../../../../core/network/api/request_wrapper.dart';
import '../../domain/entities/address_request_data.dart';
import 'address_api_service.dart';
import 'address_remote_data_source.dart';
import '../models/address_model.dart';

/// Handles API calls and error transformation.
///
/// **Error Handling:**
/// - Retrofit throws [DioException] for non-2xx responses
/// - All exceptions are caught and transformed via [ErrorHandler.handleException]
/// - [ApiResponse] only represents successful responses (2xx)
class AddressRemoteDataSourceImpl implements AddressRemoteDataSource {
  final AddressApiService _apiService;

  const AddressRemoteDataSourceImpl(this._apiService);

  @override
  Future<Either<Failure, List<AddressModel>>> getAddresses() async {
    try {
      final response = await _apiService.getAddresses();
      return Right(response.data);
    } catch (e) {
      return Left(ErrorHandler.handleException(e));
    }
  }

  @override
  Future<Either<Failure, AddressModel>> createAddress(
    AddressRequestData data) async {
    try {
      // Only include non-null optional fields in request
      final requestData = {
        if (data.subcity != null) 'subcity': data.subcity,
        if (data.street != null) 'street': data.street,
        if (data.building != null) 'building': data.building,
        if (data.houseNo != null) 'houseNo': data.houseNo,
        if (data.note != null) 'note': data.note,
        'lat': data.lat,
        'lng': data.lng,
      };
      final body = RequestWrapper.wrap(requestData);

      final response = await _apiService.createAddress(body);
      return Right(response.data);
    } catch (e) {
      return Left(ErrorHandler.handleException(e));
    }
  }

  @override
  Future<Either<Failure, AddressModel>> updateAddress({
    required int id,
    required AddressRequestData data,
  }) async {
    try {
      // Only include non-null optional fields in request
      final requestData = {
        if (data.subcity != null) 'subcity': data.subcity,
        if (data.street != null) 'street': data.street,
        if (data.building != null) 'building': data.building,
        if (data.houseNo != null) 'houseNo': data.houseNo,
        if (data.note != null) 'note': data.note,
        'lat': data.lat,
        'lng': data.lng,
      };
      final body = RequestWrapper.wrap(requestData);

      final response = await _apiService.updateAddress(id, body);
      return Right(response.data);
    } catch (e) {
      return Left(ErrorHandler.handleException(e));
    }
  }

  @override
  Future<Either<Failure, void>> deleteAddress(int id) async {
    try {
      await _apiService.deleteAddress(id);
      return const Right(null);
    } catch (e) {
      return Left(ErrorHandler.handleException(e));
    }
  }
}
