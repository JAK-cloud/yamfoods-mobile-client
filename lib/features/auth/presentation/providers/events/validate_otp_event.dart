import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../../core/errors/failure.dart';
import '../../../domain/entities/user.dart';


part 'validate_otp_event.g.dart';

sealed class ValidateOtpEvent {}

class ValidateOtpSuccess extends ValidateOtpEvent {
  final User user;
  ValidateOtpSuccess({required this.user});
}

class ValidateOtpFailure extends ValidateOtpEvent {
  final Failure failure;
  ValidateOtpFailure({required this.failure});
}

@riverpod
class ValidateOtpEvents extends _$ValidateOtpEvents {
  @override
  ValidateOtpEvent? build() {
    return null;
  }

  void emit(ValidateOtpEvent event) {
    state = event;
  }

  void clear() {
    state = null;
  }
}
  