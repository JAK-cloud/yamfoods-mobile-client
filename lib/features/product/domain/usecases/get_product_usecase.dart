import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../entities/product.dart';
import '../repositories/product_repository.dart';

class GetProductUsecase {
  final ProductRepository _repository;

  const GetProductUsecase(this._repository);

  Future<Either<Failure, Product>> call({
    required int branchId,
    required int productId,
  }) async {
    return await _repository.getProduct(branchId, productId);
  }
}
