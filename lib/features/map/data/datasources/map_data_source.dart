import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../../../../shared/entities/address_location.dart';
import '../models/route_model.dart';

abstract class MapDataSource {
  Future<Either<Failure, RouteModel>> getRoute(
    AddressLocation origin, AddressLocation destination);
}
