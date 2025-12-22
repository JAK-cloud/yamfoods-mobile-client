import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../../domain/entities/product.dart';
import '../../domain/repositories/product_repository.dart';
import '../datasources/product_remote_data_source.dart';
import '../mappers/product_mapper.dart';

class ProductRepositoryImpl implements ProductRepository {
  final ProductRemoteDataSource _remoteDataSource;

  const ProductRepositoryImpl(this._remoteDataSource);

  @override
  Future<Either<Failure, List<Product>>> getAllBranchProducts(
    int branchId,
  ) async {
    final result = await _remoteDataSource.getAllBranchProducts(branchId);

    return result.fold((failure) => Left(failure), (productModels) {
      final products = productModels.map((p) => p.toDomain()).toList();
      return Right(products);
    });
  }

  @override
  Future<Either<Failure, List<Product>>> getAllCategoryProducts(
    int branchId,
    int categoryId,
  ) async {
    final result = await _remoteDataSource.getAllCategoryProducts(
      branchId,
      categoryId,
    );

    return result.fold((failure) => Left(failure), (productModels) {
      final products = productModels.map((p) => p.toDomain()).toList();
      return Right(products);
    });
  }

  @override
  Future<Either<Failure, List<Product>>> getAllSubcategoryProducts(
    int branchId,
    int subCategoryId,
  ) async {
    final result = await _remoteDataSource.getAllSubcategoryProducts(
      branchId,
      subCategoryId,
    );

    return result.fold((failure) => Left(failure), (productModels) {
      final products = productModels.map((p) => p.toDomain()).toList();
      return Right(products);
    });
  }
}
