import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../../data/models/delivery_zone_model.dart';
import '../repositories/app_configuration_repository.dart';

class GetDeliveryZonesUsecase {
  final AppConfigurationRepository _repository;

  const GetDeliveryZonesUsecase(this._repository);

  Future<Either<Failure, List<DeliveryZoneModel>>> call() async {
    return await _repository.getDeliveryZones();
  }
}
