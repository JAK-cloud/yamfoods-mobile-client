import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../models/app_configuration_model.dart';
import '../models/delivery_zone_model.dart';
import '../models/order_type_config_model.dart';

abstract class AppConfigurationRemoteDataSource {
  Future<Either<Failure, AppConfigurationModel>> getAppConfiguration();

  Future<Either<Failure, List<OrderTypeConfigModel>>> getOrderTypes();

  Future<Either<Failure, List<DeliveryZoneModel>>> getDeliveryZones();
}
