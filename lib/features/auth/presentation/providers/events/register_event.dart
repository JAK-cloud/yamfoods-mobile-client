import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../../core/errors/failure.dart';
import '../../../domain/entities/user.dart';

part 'register_event.g.dart';



sealed class RegisterUiEvent {}

class RegisterSuccess extends RegisterUiEvent {
  final User user;
  RegisterSuccess({required this.user});
}

class RegisterFailure extends RegisterUiEvent {
  final Failure failure;
  RegisterFailure({required this.failure});
}


@riverpod
class RegisterUiEvents extends _$RegisterUiEvents {
  @override
  RegisterUiEvent? build() {
    return null;
  }

  void emit(RegisterUiEvent event) {
    state = event;
  }

  void clear() {
    state = null;
  }
}