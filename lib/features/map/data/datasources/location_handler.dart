import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

import '../../../../core/errors/failure.dart';
import '../../../../shared/entities/address_location.dart';

/// Service class to handle location permissions and GPS service status
/// Ensures users cannot access the app without proper location permissions and GPS enabled
class LocationHandler {
  static final LocationHandler _instance = LocationHandler._internal();
  factory LocationHandler() => _instance;
  LocationHandler._internal();

  StreamSubscription<ServiceStatus>? _serviceStatusStream;

  /// Check if location services are enabled and permissions are granted
  /// Returns true if all requirements are met, false otherwise
  Future<LocationStatus> checkLocationStatus() async {
    try {
      // Check if location services are enabled
      bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        return LocationStatus.serviceDisabled;
      }

      // Check location permissions
      LocationPermission permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        return LocationStatus.permissionDenied;
      }

      if (permission == LocationPermission.deniedForever) {
        return LocationStatus.permissionPermanentlyDenied;
      }

      // Permissions granted and services enabled
      return LocationStatus.granted;
    } catch (e) {
      return LocationStatus.error;
    }
  }

  /// Request location permission from user
  Future<LocationPermission> requestLocationPermission() async {
    return await Geolocator.requestPermission();
  }

  /// Open device location settings
  Future<bool> openLocationSettings() async {
    return await Geolocator.openLocationSettings();
  }

  /// Open app settings for permission management
  Future<bool> openAppSettings() async {
    return await Geolocator.openAppSettings();
  }

  /// Stream driver location updates continuously.
  // Stream<Either<Failure, LatLon>> getCurrentLocationStream() async* {
  //   try {
  //     final status = await checkLocationStatus();
  //     if (status != LocationStatus.granted) {
  //       yield  Left(LocationFailure(message: status.message));
  //        return; // ✅ stop execution, do not continue
  //     }
  //      // Start location stream
  //     final positionStream = Geolocator.getPositionStream(
  //       locationSettings: const LocationSettings(
  //         accuracy: LocationAccuracy.bestForNavigation,
  //         distanceFilter: 2, // meters
  //       ),
  //     );

  //     await for (final position in positionStream) {
  //       yield Right(
  //         LatLon(latitude: position.latitude, longitude: position.longitude),
  //       );
  //     }
  //   } catch (e) {
  //     yield Left(LocationFailure(message: 'Failed to get location: $e'));
  //   }
  // }
  /// Simulated driver location updates that moves along the restaurant-customer route.
  Stream<Either<Failure, AddressLocation>> getCurrentLocationStream() async* {
    try {
      // Mock driver positions that move from restaurant area towards customer
      // Restaurant: [9.005401, 38.763611] -> Customer: [9.010998, 38.761501]
      final direction = [
        // Start near restaurant
        [8.988681, 38.790521999999996],
        [8.988674, 38.790549],
        [8.988622, 38.790591],
        [8.988494, 38.790673],
        [8.988408999999999, 38.790729],
        [8.988445, 38.790772],
        [8.988503, 38.790850999999996],
        [8.98869, 38.791123],
        [8.988821999999999, 38.7913],
        [8.988952, 38.791523999999995],
        [8.989033, 38.791658999999996],
        [8.989115, 38.791821],
        [8.989281, 38.79208],
        [8.989668, 38.792569],
        [8.990167, 38.79318],
        [8.990219, 38.79325],
        [8.990307999999999, 38.793191],
        [8.990458, 38.793088],
        [8.99066, 38.792947999999996],
        [8.990864, 38.792808],
        [8.991292, 38.792519],
        [8.991596, 38.792322],
        [8.992051, 38.792023],
        [8.992315999999999, 38.791844],
        [8.992595999999999, 38.791635],
        [8.992706, 38.791554999999995],
        [8.992811999999999, 38.791478],
        [8.992956, 38.791357],
        [8.993094, 38.791241],
        [8.993307, 38.791061],
        [8.993369, 38.791001],
        [8.993566, 38.790814999999995],
        [8.993843, 38.79056],
        [8.994043, 38.790369],
        [8.994266, 38.790154],
        [8.994409, 38.790015],
        [8.994581, 38.789840999999996],
        [8.995, 38.7895],
        [8.996022, 38.788491],
        [8.996236999999999, 38.788278999999996],
        [8.996539, 38.787980999999995],
        [8.997513, 38.787037999999995],
        [8.997779999999999, 38.786882],
        [8.997826, 38.786919999999995],
        [8.997853, 38.786932],
        [8.99789, 38.786947],
        [8.997959, 38.786953],
        [8.998026, 38.786937],
        [8.998085999999999, 38.786901],
        [8.998114, 38.786871999999995],
        [8.99814, 38.786834],
        [8.998156, 38.786794],
        [8.998165, 38.786744999999996],
        [8.998163, 38.786695],
        [8.998244999999999, 38.786573],
        [8.998293, 38.786501],
        [8.998422999999999, 38.786280999999995],
        [8.998446999999999, 38.786235999999995],
        [8.998479999999999, 38.786183],
        [8.99855, 38.786069999999995],
        [8.998652, 38.785909],
        [8.998752999999999, 38.785765999999995],
        [8.998825, 38.785657],
        [8.998925, 38.785508],
        [8.999087, 38.785267],
        [8.999209, 38.785091],
        [8.999333, 38.784901],
        [8.999359, 38.784862],
        [8.999455, 38.78472],
        [8.999616999999999, 38.784465999999995],
        [8.999779, 38.784216],
        [8.999903, 38.784034999999996],
        [9.000051, 38.783854999999996],
        [9.000195999999999, 38.783684],
        [9.000413, 38.783455],
        [9.000684999999999, 38.783176],
        [9.000755999999999, 38.783094],
        [9.000950999999999, 38.782891],
        [9.001156, 38.782705],
        [9.001472, 38.782410999999996],
        [9.001617, 38.782272],
        [9.001797, 38.782087],
        [9.001954999999999, 38.781935],
        [9.002170999999999, 38.781738],
        [9.002388999999999, 38.781554],
        [9.002673, 38.781296],
        [9.002960999999999, 38.781031999999996],
        [9.003021, 38.780969999999996],
        [9.003136999999999, 38.780856],
        [9.003318, 38.780688],
        [9.003414, 38.780611],
        [9.003593, 38.780456],
        [9.003708, 38.780366],
        [9.003853, 38.780313],
        [9.003936, 38.780305999999996],
        [9.004111, 38.780319],
        [9.004277, 38.780395999999996],
        [9.004529999999999, 38.780522999999995],
        [9.004705, 38.780604],
        [9.004816, 38.78066],
        [9.004985999999999, 38.780744999999996],
        [9.005158999999999, 38.780842],
        [9.005391999999999, 38.780947],
        [9.005647999999999, 38.781064],
        [9.005815, 38.781138999999996],
        [9.005989, 38.781186],
        [9.006146, 38.781228],
        [9.00626, 38.781242999999996],
        [9.006366, 38.781247],
        [9.006549999999999, 38.781256],
        [9.006666, 38.781254],
        [9.006727, 38.781253],
        [9.006895, 38.781242],
        [9.00706, 38.781223],
        [9.007385, 38.781154],
        [9.00755, 38.78111],
        [9.007703, 38.781056],
        [9.007821, 38.781015],
        [9.008105, 38.780881],
        [9.008256, 38.780809999999995],
        [9.008488, 38.780719999999995],
        [9.008651, 38.780681],
        [9.008712, 38.780677],
        [9.008841, 38.780667],
        [9.00897, 38.780678],
        [9.009095, 38.780705],
        [9.009217, 38.78073],
        [9.009538, 38.780787],
        [9.009684, 38.78082],
        [9.009917, 38.780868],
        [9.010124, 38.780905],
        [9.010276, 38.780936],
        [9.010413, 38.780966],
        [9.010816, 38.781064],
        [9.011155, 38.781146],
        [9.011212, 38.781158999999995],
        [9.011711, 38.781302],
        [9.012157, 38.781424],
        [9.012293999999999, 38.781461],
        [9.013005, 38.781582],
        [9.013753999999999, 38.78167],
        [9.01413, 38.781693],
        [9.014673, 38.781712],
        [9.015001999999999, 38.781732999999996],
        [9.015321, 38.781759],
        [9.015687999999999, 38.781813],
        [9.016117, 38.781870999999995],
        [9.016254, 38.781901],
        [9.016544999999999, 38.781931],
        [9.01702, 38.781994999999995],
        [9.017444, 38.78205],
        [9.017707999999999, 38.782086],
        [9.017999999999999, 38.782140999999996],
        [9.018208, 38.782188999999995],
        [9.018383, 38.782235],
        [9.018542, 38.782278],
        [9.018842, 38.78235],
        [9.018977999999999, 38.782377],
        [9.019123, 38.782407],
        [9.019302999999999, 38.782435],
        [9.019447999999999, 38.782426],
        [9.019675, 38.782402999999995],
        [9.019995999999999, 38.782345],
        [9.020513, 38.782261999999996],
        [9.020912, 38.782182],
        [9.021246999999999, 38.782098],
        [9.021429, 38.782032],
        [9.021567, 38.781967],
        [9.021662, 38.781901],
        [9.021836, 38.781776],
        [9.022193999999999, 38.781465],
        [9.022433999999999, 38.781269],
        [9.022573999999999, 38.781169999999996],
        [9.022834, 38.780978],
        [9.022933, 38.780921],
        [9.023015, 38.780891],
        [9.023067, 38.780868],
        [9.023268999999999, 38.780837999999996],
        [9.023336, 38.780904],
        [9.023399999999999, 38.780930999999995],
        [9.023468, 38.780937],
        [9.023536, 38.780921],
        [9.023615999999999, 38.780882999999996],
        [9.023653, 38.780836],
        [9.023666, 38.780797],
        [9.023672999999999, 38.780713],
        [9.023662999999999, 38.780648],
        [9.023634999999999, 38.78059],
        [9.023591, 38.780542],
        [9.023546999999999, 38.780513],
        [9.023498, 38.780497],
        [9.023353, 38.780325999999995],
        [9.023306, 38.78021],
        [9.023287, 38.780087],
        [9.023284, 38.779979999999995],
        [9.023306999999999, 38.779816],
        [9.02331, 38.779787],
        [9.023384, 38.779384],
        [9.023422, 38.779137999999996],
        [9.023437999999999, 38.77883],
        [9.023436, 38.778289],
        [9.023441, 38.777826999999995],
        [9.023439999999999, 38.777173999999995],
        [9.023439, 38.776883999999995],
        [9.0235, 38.776647],
        [9.023538, 38.776601],
        [9.023717999999999, 38.776575],
        [9.023901, 38.776562999999996],
        [9.024151, 38.776558],
        [9.024433, 38.776564],
        [9.025067, 38.776579],
        [9.025292, 38.776573],
        [9.025433, 38.776556],
        [9.025579, 38.776514],
        [9.025687, 38.776443],
        [9.025825, 38.776354],
        [9.026489999999999, 38.775903],
        [9.026736, 38.775737],
        [9.026831999999999, 38.775667],
        [9.026921, 38.775602],
        [9.026956, 38.775625999999995],
        [9.027011, 38.775648],
        [9.027069, 38.775653],
        [9.027127, 38.775641],
        [9.027189, 38.775607],
        [9.027236, 38.775554],
        [9.027263, 38.775487999999996],
        [9.027362, 38.775408999999996],
        [9.02746, 38.77533],
        [9.027629, 38.775217],
        [9.028402999999999, 38.774781],
        [9.029306, 38.77433],
        [9.029819, 38.774074999999996],
        [9.029924, 38.774024],
        [9.030142, 38.77392],
        [9.030361, 38.773837],
        [9.030434999999999, 38.773817],
        [9.030558, 38.773790999999996],
        [9.031362999999999, 38.773662],
        [9.031786, 38.773607],
        [9.032136, 38.773547],
        [9.032423999999999, 38.773522],
        [9.032511, 38.773511],
        [9.032506999999999, 38.773419],
        [9.032499, 38.773243],
        [9.032477, 38.773053],
        [9.032456999999999, 38.772905],
        [9.032441, 38.772853],
        [9.032401, 38.772729999999996],
        [9.032328, 38.772587],
        [9.032243, 38.772470999999996],
        [9.032193999999999, 38.772407],
        [9.03183, 38.771975999999995],
        [9.031742, 38.771833],
        [9.031649, 38.771622],
        [9.031573, 38.771378],
        [9.031517, 38.771173999999995],
        [9.031486, 38.770942],
        [9.031483, 38.770663],
        [9.031495, 38.77036],
        [9.031502999999999, 38.770251],
        [9.031532, 38.770133],
        [9.031569, 38.770022999999995],
        [9.031733, 38.769667],
        [9.0319, 38.769391999999996],
        [9.031983, 38.769265],
        [9.032150999999999, 38.769073999999996],
        [9.032416, 38.768853],
        [9.032676, 38.768632],
        [9.032973, 38.768378999999996],
        [9.033102999999999, 38.768234],
        [9.033215, 38.768045],
        [9.03328, 38.767894999999996],
        [9.033331, 38.767706],
        [9.033358, 38.767466],
        [9.033334, 38.767295],
        [9.033282, 38.767092999999996],
        [9.033246, 38.766981],
        [9.033165, 38.766819],
        [9.033057, 38.766662],
        [9.032923, 38.766504],
        [9.032801, 38.766365],
        [9.03266, 38.766205],
        [9.032511999999999, 38.766025],
        [9.032411, 38.765875],
        [9.032321999999999, 38.765679999999996],
        [9.032273, 38.765465],
        [9.032256, 38.765312],
        [9.032254, 38.765150999999996],
        [9.032278, 38.764989],
        [9.032331, 38.764804],
        [9.032487, 38.764417],
        [9.032513999999999, 38.764359],
        [9.032634, 38.764097],
        [9.032803, 38.763757],
        [9.03284, 38.763678],
        [9.032923, 38.763683],
        [9.033012, 38.763661],
        [9.033089, 38.763613],
        [9.033147999999999, 38.763543999999996],
        [9.033184, 38.763459],
        [9.033192, 38.76338],
        [9.033187, 38.763332999999996],
        [9.033177, 38.763286],
        [9.033137, 38.763208],
        [9.033076, 38.763145],
        [9.033000999999999, 38.763103],
        [9.032916, 38.763084],
        [9.032829999999999, 38.763090999999996],
        [9.032752, 38.763121999999996],
        [9.032681, 38.763177],
        [9.032631, 38.763248],
        [9.032608999999999, 38.763307],
        [9.032504, 38.763317],
        [9.032183, 38.763352],
        [9.031932, 38.763374999999996],
        [9.031813999999999, 38.763387],
        [9.030828999999999, 38.76348],
        [9.030832, 38.763639],
        [9.030814999999999, 38.764196],
        [9.0308, 38.764697999999996],
        [9.030795, 38.765304] // Customer location
      ];

      for (final point in direction) {
        await Future.delayed(
          const Duration(seconds: 1), // Slower movement for better visibility
        );
        yield Right(AddressLocation(latitude: point[0], longitude: point[1]));
      }
    } catch (e) {

      // yield Left(
      //   Failure.networkError(NetworkExceptions.getErrorMessage(e)),
      // );
    }
  }

  /// Start monitoring location service status changes
  void startLocationServiceMonitoring(Function(ServiceStatus) onStatusChanged) {
    _serviceStatusStream = Geolocator.getServiceStatusStream().listen(
      onStatusChanged,
      onError: (error) {
        debugPrint('Location service monitoring error: $error');
      },
    );
  }

  /// Stop monitoring location service status changes
  void stopLocationServiceMonitoring() {
    _serviceStatusStream?.cancel();
    _serviceStatusStream = null;
  }

  /// Dispose resources
  void dispose() {
    stopLocationServiceMonitoring();
  }
}

/// Enum to represent different location permission states
enum LocationStatus {
  granted,
  permissionDenied,
  permissionPermanentlyDenied,
  serviceDisabled,
  error,
}

/// Extension to get user-friendly messages for location status
extension LocationStatusExtension on LocationStatus {
  String get message {
    switch (this) {
      case LocationStatus.granted:
        return 'Location access granted';
      case LocationStatus.permissionDenied:
        return 'Location permission is required for this app to function properly';
      case LocationStatus.permissionPermanentlyDenied:
        return 'Location permission has been permanently denied. Please enable it in app settings';
      case LocationStatus.serviceDisabled:
        return 'Location services are disabled. Please enable them to use this app';
      case LocationStatus.error:
        return 'An error occurred while checking location status';
    }
  }

  String get title {
    switch (this) {
      case LocationStatus.granted:
        return 'Location Ready';
      case LocationStatus.permissionDenied:
        return 'Location Permission Required';
      case LocationStatus.permissionPermanentlyDenied:
        return 'Permission Permanently Denied';
      case LocationStatus.serviceDisabled:
        return 'Enable Location Services';
      case LocationStatus.error:
        return 'Location Error';
    }
  }
}
