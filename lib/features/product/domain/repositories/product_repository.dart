import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../../data/models/product_filter_request_model.dart';
import '../entities/product.dart';

abstract class ProductRepository {
  Future<Either<Failure, List<Product>>> getAllBranchProducts(int branchId);

  Future<Either<Failure, List<Product>>> getAllBranchProductsWithFilters(
    int branchId,
    ProductFilterRequestModel filters,
  );

  Future<Either<Failure, List<Product>>> getAllCategoryProducts(
    int branchId,
    int categoryId,
  );

  Future<Either<Failure, List<Product>>> getAllSubcategoryProducts(
    int branchId,
    int subCategoryId,
  );

  Future<Either<Failure, Product>> getProduct(int branchId, int productId);
}
