import 'package:dartz/dartz.dart';

import '../../../../core/errors/error_handler.dart';
import '../../../../core/errors/failure.dart';
import '../models/product_filter_request_model.dart';
import '../models/product_model.dart';
import 'product_api_service.dart';
import 'product_remote_data_source.dart';

class ProductRemoteDataSourceImpl implements ProductRemoteDataSource {
  final ProductApiService _apiService;

  const ProductRemoteDataSourceImpl(this._apiService);

  @override
  Future<Either<Failure, List<ProductModel>>> getAllBranchProducts(
    int branchId,
  ) async {
    try {
      final response = await _apiService.getAllBranchProducts(branchId);
      return Right(response.data.products);
    } catch (e) {
      return Left(ErrorHandler.handleException(e));
    }
  }

  @override
  Future<Either<Failure, List<ProductModel>>> getAllBranchProductsWithFilters(
    int branchId,
    ProductFilterRequestModel filters,
  ) async {
    try {
      final queryParams = filters.toQueryParameters();
      final response = await _apiService.getAllBranchProductsWithFilters(
        branchId,
        queryParams['search'] as String?,
        queryParams['minPrice'] as double?,
        queryParams['maxPrice'] as double?,
        queryParams['category'] as int?,
        queryParams['subcategory'] as int?,
        queryParams['ingredients'] as String?,
        queryParams['hasDiscount'] as String?,
      );
      return Right(response.data.products);
    } catch (e) {
      return Left(ErrorHandler.handleException(e));
    }
  }

  @override
  Future<Either<Failure, List<ProductModel>>> getAllCategoryProducts(
    int branchId,
    int categoryId,
  ) async {
    try {
      final response = await _apiService.getAllCategoryProducts(
        branchId,
        categoryId,
      );
      return Right(response.data.products);
    } catch (e) {
      return Left(ErrorHandler.handleException(e));
    }
  }

  @override
  Future<Either<Failure, List<ProductModel>>> getAllSubcategoryProducts(
    int branchId,
    int subCategoryId,
  ) async {
    try {
      final response = await _apiService.getAllSubcategoryProducts(
        branchId,
        subCategoryId,
      );
      return Right(response.data.products);
    } catch (e) {
      return Left(ErrorHandler.handleException(e));
    }
  }

  @override
  Future<Either<Failure, ProductModel>> getProduct(
    int branchId,
    int productId,
  ) async {
    try {
      final response = await _apiService.getProduct(branchId, productId);
      return Right(response.data);
    } catch (e) {
      return Left(ErrorHandler.handleException(e));
    }
  }
}
