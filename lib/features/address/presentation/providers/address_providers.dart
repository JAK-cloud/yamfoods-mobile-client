import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/network/di/dio_client.dart';
import '../../data/datasources/address_api_service.dart';
import '../../data/datasources/address_remote_data_source.dart';
import '../../data/datasources/address_remote_data_source_impl.dart';
import '../../data/repositories/address_repository_impl.dart';
import '../../domain/repositories/address_repository.dart';
import '../../domain/usecases/get_addresses_usecase.dart';
import '../../domain/usecases/create_address_usecase.dart';
import '../../domain/usecases/update_address_usecase.dart';
import '../../domain/usecases/delete_address_usecase.dart';

part 'address_providers.g.dart';

@riverpod
AddressApiService addressApiService(Ref ref) {
  final dio = ref.watch(baseDioClientProvider);
  return AddressApiService(dio);
}

@riverpod
AddressRemoteDataSource addressRemoteDataSource(Ref ref) {
  final apiService = ref.watch(addressApiServiceProvider);
  return AddressRemoteDataSourceImpl(apiService);
}

@riverpod
AddressRepository addressRepository(Ref ref) {
  final remoteDataSource = ref.watch(addressRemoteDataSourceProvider);
  return AddressRepositoryImpl(remoteDataSource);
}

@riverpod
GetAddressesUsecase getAddressesUseCase(Ref ref) {
  return GetAddressesUsecase(ref.watch(addressRepositoryProvider));
}

@riverpod
CreateAddressUsecase createAddressUseCase(Ref ref) {
  return CreateAddressUsecase(ref.watch(addressRepositoryProvider));
}

@riverpod
UpdateAddressUsecase updateAddressUseCase(Ref ref) {
  return UpdateAddressUsecase(ref.watch(addressRepositoryProvider));
}

@riverpod
DeleteAddressUsecase deleteAddressUseCase(Ref ref) {
  return DeleteAddressUsecase(ref.watch(addressRepositoryProvider));
}
