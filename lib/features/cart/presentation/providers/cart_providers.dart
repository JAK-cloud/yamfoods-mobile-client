import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/network/di/dio_client.dart';
import '../../data/datasources/cart_api_service.dart';
import '../../data/datasources/cart_remote_data_source.dart';
import '../../data/datasources/cart_remote_data_source_impl.dart';
import '../../data/repositories/cart_repository_impl.dart';
import '../../domain/repositories/cart_repository.dart';
import '../../domain/usecases/add_to_cart_usecase.dart';
import '../../domain/usecases/increase_cart_quantity_usecase.dart';
import '../../domain/usecases/decrease_cart_quantity_usecase.dart';
import '../../domain/usecases/get_all_carts_usecase.dart';
import '../../domain/usecases/delete_cart_item_usecase.dart';
import '../../domain/usecases/delete_all_cart_items_usecase.dart';

part 'cart_providers.g.dart';

@riverpod
CartApiService cartApiService(Ref ref) {
  final dio = ref.watch(baseDioClientProvider);
  return CartApiService(dio);
}

@riverpod
CartRemoteDataSource cartRemoteDataSource(Ref ref) {
  final apiService = ref.watch(cartApiServiceProvider);
  return CartRemoteDataSourceImpl(apiService);
}

@riverpod
CartRepository cartRepository(Ref ref) {
  final remoteDataSource = ref.watch(cartRemoteDataSourceProvider);
  return CartRepositoryImpl(remoteDataSource);
}

@riverpod
AddToCartUsecase addToCartUseCase(Ref ref) {
  return AddToCartUsecase(ref.watch(cartRepositoryProvider));
}

@riverpod
IncreaseCartQuantityUsecase increaseCartQuantityUseCase(Ref ref) {
  return IncreaseCartQuantityUsecase(ref.watch(cartRepositoryProvider));
}

@riverpod
DecreaseCartQuantityUsecase decreaseCartQuantityUseCase(Ref ref) {
  return DecreaseCartQuantityUsecase(ref.watch(cartRepositoryProvider));
}

@riverpod
GetAllCartsUsecase getAllCartsUseCase(Ref ref) {
  return GetAllCartsUsecase(ref.watch(cartRepositoryProvider));
}

@riverpod
DeleteCartItemUsecase deleteCartItemUseCase(Ref ref) {
  return DeleteCartItemUsecase(ref.watch(cartRepositoryProvider));
}

@riverpod
DeleteAllCartItemsUsecase deleteAllCartItemsUseCase(Ref ref) {
  return DeleteAllCartItemsUsecase(ref.watch(cartRepositoryProvider));
}
