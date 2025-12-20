
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../../core/errors/failure.dart';
import '../../../domain/entities/user.dart';

part 'save_phone_event.g.dart';

sealed class SavePhoneEvent {}

class SavePhoneSuccess extends SavePhoneEvent {
  final User user;
  SavePhoneSuccess({required this.user});
}

class SavePhoneFailure extends SavePhoneEvent {
  final Failure failure;
  SavePhoneFailure({required this.failure});
}

@riverpod
class SavePhoneEvents extends _$SavePhoneEvents {
  @override
  SavePhoneEvent? build() {
    return null;
  }

  void emit(SavePhoneEvent event) {
    state = event;
  }

  void clear() {
    state = null;
  }
}
