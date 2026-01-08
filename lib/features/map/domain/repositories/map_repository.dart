import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../../../../shared/entities/address_location.dart';
import '../entities/route.dart';

abstract class MapRepository {
  Future<Either<Failure, Route>> getRoute(
    AddressLocation origin,
    AddressLocation destination,
  );
}
