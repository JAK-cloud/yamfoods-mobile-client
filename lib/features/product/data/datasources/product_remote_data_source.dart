import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../models/product_filter_request_model.dart';
import '../models/product_model.dart';

abstract class ProductRemoteDataSource {
  Future<Either<Failure, List<ProductModel>>> getAllBranchProducts(
    int branchId,
  );

  Future<Either<Failure, List<ProductModel>>> getAllBranchProductsWithFilters(
    int branchId,
    ProductFilterRequestModel filters,
  );

  Future<Either<Failure, List<ProductModel>>> getAllCategoryProducts(
    int branchId,
    int categoryId,
  );

  Future<Either<Failure, List<ProductModel>>> getAllSubcategoryProducts(
    int branchId,
    int subCategoryId,
  );

  Future<Either<Failure, ProductModel>> getProduct(int branchId, int productId);
}
