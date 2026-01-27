
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../../core/errors/failure.dart';
import '../../../domain/entities/auth_token.dart';
import '../../../domain/entities/user.dart';


part 'verify_phone_event.g.dart';

sealed class VerifyPhoneEvent {}

class VerifyPhoneSuccess extends VerifyPhoneEvent {
  final User user;
  final AuthToken tokens;
  VerifyPhoneSuccess({required this.user, required this.tokens});
}

class VerifyPhoneFailure extends VerifyPhoneEvent {
  final Failure failure;
  VerifyPhoneFailure({required this.failure});
}

@riverpod
class VerifyPhoneEvents extends _$VerifyPhoneEvents {
  @override
  VerifyPhoneEvent? build() {
    return null;
  }

  void emit(VerifyPhoneEvent event) {
    state = event;
  }

  void clear() {
    state = null;
  }
}