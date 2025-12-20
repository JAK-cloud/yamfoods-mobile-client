
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../../core/errors/failure.dart';
import '../../../domain/entities/user.dart';

part 'auth_state.g.dart';

sealed class AuthEvent {}

class Authenticated extends AuthEvent {
  final User user;
  Authenticated({required this.user});
}

class Unauthenticated extends AuthEvent {}

class AuthenticationFailure extends AuthEvent {
  final Failure failure;
  AuthenticationFailure({required this.failure});
}

@riverpod
class AuthEvents extends _$AuthEvents {
  @override
  AuthEvent? build() {
    return null;
  }

  void emit(AuthEvent event) {
    state = event;
  }

  void clear() {
    state = null;
  }
}


