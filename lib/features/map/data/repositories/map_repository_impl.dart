import 'package:dartz/dartz.dart';
import '../../../../core/errors/failure.dart';
import '../../../../shared/entities/address_location.dart';
import '../../domain/entities/route.dart';
import '../../domain/repositories/map_repository.dart';
import '../datasources/map_data_source.dart';
import '../models/route_model.dart';

class MapRepositoryImpl implements MapRepository {
  final MapDataSource
  mapDataSource; // Use abstract class instead of concrete implementation (DataSourceImpl)

  MapRepositoryImpl(this.mapDataSource);

  @override
  Future<Either<Failure, Route>> getRoute(
    AddressLocation origin,
    AddressLocation destination,
  ) async {
    final routeModel = await mapDataSource.getRoute(origin, destination);
    return routeModel.fold(
      (failure) => Left(failure),
      (route) => Right(route.toDomain()),
    );
  }
}
