import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'auth_providers.dart';
import 'auth_user_state.dart';
import 'events/auth_state.dart';
import 'events/register_event.dart';
import 'events/request_otp_event.dart';
import 'events/reset_password_event.dart';
import 'events/save_phone_event.dart';
import 'events/validate_otp_event.dart';
import 'events/verify_phone_event.dart';

part 'auth_notifier.g.dart';

@riverpod
class AuthNotifier extends _$AuthNotifier {
  @override
  bool build() => false; // false = not loading

  /// Refreshes the authentication state
  ///
  /// This forces a re-check of local storage and updates AuthUserState.
  /// Usually not needed since AuthUserState auto-initializes, but useful
  /// for manual refresh scenarios.
  Future<void> refreshAuthState() async {
    await ref.read(authUserStateProvider.notifier).refresh();
  }

  Future<void> register({
    required String name,
    required String email,
    required String password,
  }) async {
    state = true;
    try {
      final registerUsecase = await ref.read(registerUsecaseProvider.future);
      final result = await registerUsecase(
        name: name,
        email: email,
        password: password,
      );
      result.fold(
        (failure) => ref
            .read(registerUiEventsProvider.notifier)
            .emit(RegisterFailure(failure: failure)),
        (user) => ref
            .read(registerUiEventsProvider.notifier)
            .emit(RegisterSuccess(user: user)),
      );
    } finally {
      state = false;
    }
  }

  Future<void> login({required String phone, required String password}) async {
    state = true;
    try {
      final loginUsecase = await ref.read(loginUsecaseProvider.future);
      final result = await loginUsecase(phone: phone, password: password);
      result.fold(
        (failure) => ref
            .read(authEventsProvider.notifier)
            .emit(AuthenticationFailure(failure: failure)),
        (data) async {
          // Update persistent state and emit event
          await ref.read(authUserStateProvider.notifier).setUser(data.user);
          ref
              .read(authEventsProvider.notifier)
              .emit(Authenticated(user: data.user));
        },
      );
    } finally {
      state = false;
    }
  }

  Future<void> logout() async {
    state = true;
    try {
      final logoutUsecase = await ref.read(logoutUsecaseProvider.future);
      final result = await logoutUsecase();
      result.fold(
        (failure) => ref
            .read(authEventsProvider.notifier)
            .emit(AuthenticationFailure(failure: failure)),
        (_) async {
          // Clear persistent state and emit event
          await ref.read(authUserStateProvider.notifier).clearUser();
          ref.read(authEventsProvider.notifier).emit(Unauthenticated());
        },
      );
    } finally {
      state = false;
    }
  }

  Future<void> savePhoneNumber({
    required int userId,
    required String phone,
  }) async {
    state = true;
    try {
      final savePhoneNumberUsecase = await ref.read(
        savePhoneNumberUsecaseProvider.future,
      );
      final result = await savePhoneNumberUsecase(userId: userId, phone: phone);
      result.fold(
        (failure) => ref
            .read(savePhoneEventsProvider.notifier)
            .emit(SavePhoneFailure(failure: failure)),
        (user) => ref
            .read(savePhoneEventsProvider.notifier)
            .emit(SavePhoneSuccess(user: user)),
      );
    } finally {
      state = false;
    }
  }

  Future<void> verifyPhone({required String otp, required String phone}) async {
    state = true;
    try {
      final verifyPhoneUsecase = await ref.read(
        verifyPhoneUsecaseProvider.future,
      );
      final result = await verifyPhoneUsecase(otp: otp, phone: phone);
      result.fold(
        (failure) => ref
            .read(verifyPhoneEventsProvider.notifier)
            .emit(VerifyPhoneFailure(failure: failure)),
        (user) => ref
            .read(verifyPhoneEventsProvider.notifier)
            .emit(VerifyPhoneSuccess(user: user)),
      );
    } finally {
      state = false;
    }
  }

  Future<void> requestResetPasswordOtp({required String phone}) async {
    state = true;
    try {
      final requestResetPasswordOtpUsecase = await ref.read(
        requestResetPasswordOtpUsecaseProvider.future,
      );
      final result = await requestResetPasswordOtpUsecase(phone: phone);
      result.fold(
        (failure) => ref
            .read(requestOtpEventsProvider.notifier)
            .emit(RequestOtpFailure(failure: failure)),
        (_) => ref
            .read(requestOtpEventsProvider.notifier)
            .emit(RequestOtpSuccess()),
      );
    } finally {
      state = false;
    }
  }

  Future<void> validateOtp({required String otp, required String phone}) async {
    state = true;
    try {
      final validateOtpUsecase = await ref.read(
        validateOtpUsecaseProvider.future,
      );
      final result = await validateOtpUsecase(otp: otp, phone: phone);
      result.fold(
        (failure) => ref
            .read(validateOtpEventsProvider.notifier)
            .emit(ValidateOtpFailure(failure: failure)),
        (user) => ref
            .read(validateOtpEventsProvider.notifier)
            .emit(ValidateOtpSuccess(user: user)),
      );
    } finally {
      state = false;
    }
  }

  Future<void> resetPassword({
    required String phone,
    required String newPassword,
  }) async {
    state = true;
    try {
      final resetPasswordUsecase = await ref.read(
        resetPasswordUsecaseProvider.future,
      );
      final result = await resetPasswordUsecase(
        phone: phone,
        newPassword: newPassword,
      );
      result.fold(
        (failure) => ref
            .read(resetPasswordEventsProvider.notifier)
            .emit(ResetPasswordFailure(failure: failure)),
        (user) => ref
            .read(resetPasswordEventsProvider.notifier)
            .emit(ResetPasswordSuccess(user: user)),
      );
    } finally {
      state = false;
    }
  }
}
