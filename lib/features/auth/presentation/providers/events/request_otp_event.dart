
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../../core/errors/failure.dart';

part 'request_otp_event.g.dart';

sealed class RequestOtpEvent {}

class RequestOtpSuccess extends RequestOtpEvent {}

class RequestOtpFailure extends RequestOtpEvent {
  final Failure failure;
  RequestOtpFailure({required this.failure});
}

@riverpod
class RequestOtpEvents extends _$RequestOtpEvents {
  @override
  RequestOtpEvent? build() {
    return null;
  }

  void emit(RequestOtpEvent event) {
    state = event;
  }

  void clear() {
    state = null;
  }
}