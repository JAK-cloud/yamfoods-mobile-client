import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../entities/cart.dart';
import '../entities/cart_request_data.dart';

abstract class CartRepository {
  Future<Either<Failure, Unit>> addToCart(CartRequestData data);

  Future<Either<Failure, Unit>> increaseCartQuantity(int cartId);

  Future<Either<Failure, Unit>> decreaseCartQuantity(int cartId);

  Future<Either<Failure, List<Cart>>> getAllCarts(int branchId);

  Future<Either<Failure, Unit>> deleteCartItem(int cartId);

  Future<Either<Failure, Unit>> deleteAllCartItems();
}
