import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/network/di/dio_client.dart';
import '../../../../core/providers/core_providers.dart';
import '../../data/datasources/auth_api_service.dart';
import '../../data/datasources/auth_local_data_source.dart';
import '../../data/datasources/auth_local_data_source_impl.dart';
import '../../data/datasources/auth_remote_data_source.dart';
import '../../data/datasources/auth_remote_data_source_impl.dart';
import '../../data/repositories/auth_repository_impl.dart';
import '../../domain/repositories/auth_repository.dart';
import '../../domain/usecases/login_usecase.dart';
import '../../domain/usecases/register_usecase.dart';
import '../../domain/usecases/google_sign_in_usecase.dart';
import '../../domain/usecases/logout_usecase.dart';
import '../../domain/usecases/refresh_tokens_usecase.dart';
import '../../domain/usecases/save_phone_number_usecase.dart';
import '../../domain/usecases/verify_phone_usecase.dart';
import '../../domain/usecases/validate_otp_usecase.dart';
import '../../domain/usecases/request_reset_password_otp_usecase.dart';
import '../../domain/usecases/reset_password_usecase.dart';

part 'auth_providers.g.dart';

// ==================== Data Sources ====================

/// Auth API service provider
///
/// Provides Retrofit API service for authentication endpoints.
/// Uses baseDioClientProvider to avoid circular dependency with dioClientProvider.
///
/// Uses `keepAlive: true` because this is part of the core auth dependency chain
/// used by the auth interceptor.
@Riverpod(keepAlive: true)
AuthApiService authApiService(Ref ref) {
  final dio = ref.watch(baseDioClientProvider);
  return AuthApiService(dio);
}

/// Auth remote data source provider
///
/// Provides implementation for fetching auth data from backend.
///
/// Uses `keepAlive: true` because this is part of the core auth dependency chain
/// used by the auth interceptor.
@Riverpod(keepAlive: true)
AuthRemoteDataSource authRemoteDataSource(Ref ref) {
  final apiService = ref.watch(authApiServiceProvider);
  return AuthRemoteDataSourceImpl(apiService);
}

/// Auth local data source provider (async)
///
/// Provides implementation for local storage of auth data.
/// This is async because SharedPreferences initialization is async.
///
/// Uses `keepAlive: true` because this is used by the app-wide auth interceptor
/// and should not be disposed during the app lifecycle.
@Riverpod(keepAlive: true)
Future<AuthLocalDataSource> authLocalDataSource(Ref ref) async {
  final storage = ref.watch(secureStorageProvider);
  final prefs = await ref.watch(sharedPreferencesProvider.future);
  return AuthLocalDataSourceImpl(storage, prefs);
}

// ==================== Repository ====================

/// Auth repository provider (async)
///
/// Provides the main repository for authentication operations.
/// This is async because it depends on async authLocalDataSource.
///
/// Uses `keepAlive: true` because this is used by the app-wide auth interceptor
/// and should not be disposed during the app lifecycle.
@Riverpod(keepAlive: true)
Future<AuthRepository> authRepository(Ref ref) async {
  final remoteDataSource = ref.watch(authRemoteDataSourceProvider);
  final localDataSource = await ref.watch(authLocalDataSourceProvider.future);
  return AuthRepositoryImpl(remoteDataSource, localDataSource);
}

// ==================== UseCases ====================

/// Login usecase provider (async)
///
/// Provides usecase for user login.
@riverpod
Future<LoginUsecase> loginUsecase(Ref ref) async {
  final repository = await ref.watch(authRepositoryProvider.future);
  return LoginUsecase(repository);
}

/// Register usecase provider (async)
///
/// Provides usecase for user registration.
@riverpod
Future<RegisterUsecase> registerUsecase(Ref ref) async {
  final repository = await ref.watch(authRepositoryProvider.future);
  return RegisterUsecase(repository);
}

/// Google Sign-In usecase provider (async)
///
/// Provides usecase for Google Sign-In authentication.
@riverpod
Future<GoogleSignInUsecase> googleSignInUsecase(Ref ref) async {
  final repository = await ref.watch(authRepositoryProvider.future);
  return GoogleSignInUsecase(repository);
}

/// Logout usecase provider (async)
///
/// Provides usecase for user logout.
@riverpod
Future<LogoutUsecase> logoutUsecase(Ref ref) async {
  final repository = await ref.watch(authRepositoryProvider.future);
  return LogoutUsecase(repository);
}

/// Refresh tokens usecase provider (async)
///
/// Provides usecase for refreshing authentication tokens.
@riverpod
Future<RefreshTokensUsecase> refreshTokensUsecase(Ref ref) async {
  final repository = await ref.watch(authRepositoryProvider.future);
  return RefreshTokensUsecase(repository);
}

/// Save phone number usecase provider (async)
///
/// Provides usecase for saving user phone number.
@riverpod
Future<SavePhoneNumberUsecase> savePhoneNumberUsecase(Ref ref) async {
  final repository = await ref.watch(authRepositoryProvider.future);
  return SavePhoneNumberUsecase(repository);
}

/// Verify phone usecase provider (async)
///
/// Provides usecase for verifying user phone number.
@riverpod
Future<VerifyPhoneUsecase> verifyPhoneUsecase(Ref ref) async {
  final repository = await ref.watch(authRepositoryProvider.future);
  return VerifyPhoneUsecase(repository);
}

/// Validate OTP usecase provider (async)
///
/// Provides usecase for validating OTP codes.
@riverpod
Future<ValidateOtpUsecase> validateOtpUsecase(Ref ref) async {
  final repository = await ref.watch(authRepositoryProvider.future);
  return ValidateOtpUsecase(repository);
}

/// Request reset password OTP usecase provider (async)
///
/// Provides usecase for requesting password reset OTP.
@riverpod
Future<RequestResetPasswordOtpUsecase> requestResetPasswordOtpUsecase(
  Ref ref,
) async {
  final repository = await ref.watch(authRepositoryProvider.future);
  return RequestResetPasswordOtpUsecase(repository);
}

/// Reset password usecase provider (async)
///
/// Provides usecase for resetting user password.
@riverpod
Future<ResetPasswordUsecase> resetPasswordUsecase(Ref ref) async {
  final repository = await ref.watch(authRepositoryProvider.future);
  return ResetPasswordUsecase(repository);
}
