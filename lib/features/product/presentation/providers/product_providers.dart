import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/network/di/dio_client.dart';
import '../../data/datasources/product_api_service.dart';
import '../../data/datasources/product_remote_data_source.dart';
import '../../data/datasources/product_remote_data_source_impl.dart';
import '../../data/repositories/product_repository_impl.dart';
import '../../domain/entities/product.dart';
import '../../domain/repositories/product_repository.dart';
import '../../domain/usecases/get_all_branch_products_usecase.dart';
import '../../domain/usecases/get_all_category_products_usecase.dart';
import '../../domain/usecases/get_all_subcategory_products_usecase.dart';

part 'product_providers.g.dart';

@riverpod
ProductApiService productApiService(Ref ref) {
  final dio = ref.watch(baseDioClientProvider);
  return ProductApiService(dio);
}

@riverpod
ProductRemoteDataSource productRemoteDataSource(Ref ref) {
  final apiService = ref.watch(productApiServiceProvider);
  return ProductRemoteDataSourceImpl(apiService);
}

@riverpod
ProductRepository productRepository(Ref ref) {
  final remoteDataSource = ref.watch(productRemoteDataSourceProvider);
  return ProductRepositoryImpl(remoteDataSource);
}

@riverpod
GetAllBranchProductsUsecase getAllBranchProductsUsecase(Ref ref) {
  final repository = ref.watch(productRepositoryProvider);
  return GetAllBranchProductsUsecase(repository);
}

@riverpod
GetAllCategoryProductsUsecase getAllCategoryProductsUsecase(Ref ref) {
  final repository = ref.watch(productRepositoryProvider);
  return GetAllCategoryProductsUsecase(repository);
}

@riverpod
GetAllSubcategoryProductsUsecase getAllSubcategoryProductsUsecase(Ref ref) {
  final repository = ref.watch(productRepositoryProvider);
  return GetAllSubcategoryProductsUsecase(repository);
}

@riverpod
Future<List<Product>> branchProducts(Ref ref, int branchId) async {
  final usecase = ref.watch(getAllBranchProductsUsecaseProvider);
  final result = await usecase(branchId);

  return result.fold((failure) => throw failure, (products) => products);
}

@riverpod
Future<List<Product>> categoryProducts(
  Ref ref,
  int branchId,
  int categoryId,
) async {
  final usecase = ref.watch(getAllCategoryProductsUsecaseProvider);
  final result = await usecase(branchId, categoryId);

  return result.fold((failure) => throw failure, (products) => products);
}

@riverpod
Future<List<Product>> subcategoryProducts(
  Ref ref,
  int branchId,
  int subCategoryId,
) async {
  final usecase = ref.watch(getAllSubcategoryProductsUsecaseProvider);
  final result = await usecase(branchId, subCategoryId);

  return result.fold((failure) => throw failure, (products) => products);
}
