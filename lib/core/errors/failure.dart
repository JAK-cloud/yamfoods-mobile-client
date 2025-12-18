import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

/// Types of app-level permissions we care about.
enum PermissionType { location, notification, camera, gallery }

@freezed
sealed class Failure with _$Failure {
  const factory Failure.network({String? message}) = NetworkFailure;
  const factory Failure.backend({required String message, int? statusCode}) =
      BackendFailure;
  const factory Failure.auth({required String message}) = AuthFailure;
  const factory Failure.validation({required String message}) =
      ValidationFailure;
  const factory Failure.permission({
    required PermissionType type,
    required bool permanentlyDenied,
  }) = PermissionFailure;
  const factory Failure.payment({required String message}) = PaymentFailure;
  const factory Failure.cache({String? message}) = CacheFailure;
  const factory Failure.parsing({String? message}) = ParsingFailure;
  const factory Failure.unexpected({String? message}) = UnexpectedFailure;
  const factory Failure.mapError(String message) = MapFailure;
}
