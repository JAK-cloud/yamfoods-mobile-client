import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../../core/errors/failure.dart';
import '../../../domain/entities/user.dart';

part 'reset_password_event.g.dart';

sealed class ResetPasswordEvent {}

class ResetPasswordSuccess extends ResetPasswordEvent {
  final User user;
  ResetPasswordSuccess({required this.user});
}

class ResetPasswordFailure extends ResetPasswordEvent {
  final Failure failure;
  ResetPasswordFailure({required this.failure});
}

@riverpod
class ResetPasswordEvents extends _$ResetPasswordEvents {
  @override
  ResetPasswordEvent? build() {
    return null;
  }

  void emit(ResetPasswordEvent event) {
    state = event;
  }

  void clear() {
    state = null;
  }
}
