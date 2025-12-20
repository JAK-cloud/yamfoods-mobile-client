// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Auth API service provider
///
/// Provides Retrofit API service for authentication endpoints.
/// Uses baseDioClientProvider to avoid circular dependency with dioClientProvider.

@ProviderFor(authApiService)
const authApiServiceProvider = AuthApiServiceProvider._();

/// Auth API service provider
///
/// Provides Retrofit API service for authentication endpoints.
/// Uses baseDioClientProvider to avoid circular dependency with dioClientProvider.

final class AuthApiServiceProvider
    extends $FunctionalProvider<AuthApiService, AuthApiService, AuthApiService>
    with $Provider<AuthApiService> {
  /// Auth API service provider
  ///
  /// Provides Retrofit API service for authentication endpoints.
  /// Uses baseDioClientProvider to avoid circular dependency with dioClientProvider.
  const AuthApiServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'authApiServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$authApiServiceHash();

  @$internal
  @override
  $ProviderElement<AuthApiService> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  AuthApiService create(Ref ref) {
    return authApiService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AuthApiService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AuthApiService>(value),
    );
  }
}

String _$authApiServiceHash() => r'd38b7f064ea6e276a41dec0456c5cef24d7ca2e2';

/// Auth remote data source provider
///
/// Provides implementation for fetching auth data from backend.

@ProviderFor(authRemoteDataSource)
const authRemoteDataSourceProvider = AuthRemoteDataSourceProvider._();

/// Auth remote data source provider
///
/// Provides implementation for fetching auth data from backend.

final class AuthRemoteDataSourceProvider
    extends
        $FunctionalProvider<
          AuthRemoteDataSource,
          AuthRemoteDataSource,
          AuthRemoteDataSource
        >
    with $Provider<AuthRemoteDataSource> {
  /// Auth remote data source provider
  ///
  /// Provides implementation for fetching auth data from backend.
  const AuthRemoteDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'authRemoteDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$authRemoteDataSourceHash();

  @$internal
  @override
  $ProviderElement<AuthRemoteDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  AuthRemoteDataSource create(Ref ref) {
    return authRemoteDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AuthRemoteDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AuthRemoteDataSource>(value),
    );
  }
}

String _$authRemoteDataSourceHash() =>
    r'369641ebc05efd26f122ce9bcacdb39bda8b9f88';

/// Auth local data source provider (async)
///
/// Provides implementation for local storage of auth data.
/// This is async because SharedPreferences initialization is async.

@ProviderFor(authLocalDataSource)
const authLocalDataSourceProvider = AuthLocalDataSourceProvider._();

/// Auth local data source provider (async)
///
/// Provides implementation for local storage of auth data.
/// This is async because SharedPreferences initialization is async.

final class AuthLocalDataSourceProvider
    extends
        $FunctionalProvider<
          AsyncValue<AuthLocalDataSource>,
          AuthLocalDataSource,
          FutureOr<AuthLocalDataSource>
        >
    with
        $FutureModifier<AuthLocalDataSource>,
        $FutureProvider<AuthLocalDataSource> {
  /// Auth local data source provider (async)
  ///
  /// Provides implementation for local storage of auth data.
  /// This is async because SharedPreferences initialization is async.
  const AuthLocalDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'authLocalDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$authLocalDataSourceHash();

  @$internal
  @override
  $FutureProviderElement<AuthLocalDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<AuthLocalDataSource> create(Ref ref) {
    return authLocalDataSource(ref);
  }
}

String _$authLocalDataSourceHash() =>
    r'9ffce49807586b8f3a84eea4c07d36b0b04f194b';

/// Auth repository provider (async)
///
/// Provides the main repository for authentication operations.
/// This is async because it depends on async authLocalDataSource.

@ProviderFor(authRepository)
const authRepositoryProvider = AuthRepositoryProvider._();

/// Auth repository provider (async)
///
/// Provides the main repository for authentication operations.
/// This is async because it depends on async authLocalDataSource.

final class AuthRepositoryProvider
    extends
        $FunctionalProvider<
          AsyncValue<AuthRepository>,
          AuthRepository,
          FutureOr<AuthRepository>
        >
    with $FutureModifier<AuthRepository>, $FutureProvider<AuthRepository> {
  /// Auth repository provider (async)
  ///
  /// Provides the main repository for authentication operations.
  /// This is async because it depends on async authLocalDataSource.
  const AuthRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'authRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$authRepositoryHash();

  @$internal
  @override
  $FutureProviderElement<AuthRepository> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<AuthRepository> create(Ref ref) {
    return authRepository(ref);
  }
}

String _$authRepositoryHash() => r'c9f4b5f584633a8123e10732926bf76314ecd919';

/// Login usecase provider (async)
///
/// Provides usecase for user login.

@ProviderFor(loginUsecase)
const loginUsecaseProvider = LoginUsecaseProvider._();

/// Login usecase provider (async)
///
/// Provides usecase for user login.

final class LoginUsecaseProvider
    extends
        $FunctionalProvider<
          AsyncValue<LoginUsecase>,
          LoginUsecase,
          FutureOr<LoginUsecase>
        >
    with $FutureModifier<LoginUsecase>, $FutureProvider<LoginUsecase> {
  /// Login usecase provider (async)
  ///
  /// Provides usecase for user login.
  const LoginUsecaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'loginUsecaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$loginUsecaseHash();

  @$internal
  @override
  $FutureProviderElement<LoginUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<LoginUsecase> create(Ref ref) {
    return loginUsecase(ref);
  }
}

String _$loginUsecaseHash() => r'124a90d3848bfa2187f86de1d7423f7cd743b9cf';

/// Register usecase provider (async)
///
/// Provides usecase for user registration.

@ProviderFor(registerUsecase)
const registerUsecaseProvider = RegisterUsecaseProvider._();

/// Register usecase provider (async)
///
/// Provides usecase for user registration.

final class RegisterUsecaseProvider
    extends
        $FunctionalProvider<
          AsyncValue<RegisterUsecase>,
          RegisterUsecase,
          FutureOr<RegisterUsecase>
        >
    with $FutureModifier<RegisterUsecase>, $FutureProvider<RegisterUsecase> {
  /// Register usecase provider (async)
  ///
  /// Provides usecase for user registration.
  const RegisterUsecaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'registerUsecaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$registerUsecaseHash();

  @$internal
  @override
  $FutureProviderElement<RegisterUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<RegisterUsecase> create(Ref ref) {
    return registerUsecase(ref);
  }
}

String _$registerUsecaseHash() => r'8c1f40645711915d3e9cdc105fa850983df15949';

/// Logout usecase provider (async)
///
/// Provides usecase for user logout.

@ProviderFor(logoutUsecase)
const logoutUsecaseProvider = LogoutUsecaseProvider._();

/// Logout usecase provider (async)
///
/// Provides usecase for user logout.

final class LogoutUsecaseProvider
    extends
        $FunctionalProvider<
          AsyncValue<LogoutUsecase>,
          LogoutUsecase,
          FutureOr<LogoutUsecase>
        >
    with $FutureModifier<LogoutUsecase>, $FutureProvider<LogoutUsecase> {
  /// Logout usecase provider (async)
  ///
  /// Provides usecase for user logout.
  const LogoutUsecaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'logoutUsecaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$logoutUsecaseHash();

  @$internal
  @override
  $FutureProviderElement<LogoutUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<LogoutUsecase> create(Ref ref) {
    return logoutUsecase(ref);
  }
}

String _$logoutUsecaseHash() => r'898cc1bb584a0d9d38a6cef56e475fb16bc69947';

/// Refresh tokens usecase provider (async)
///
/// Provides usecase for refreshing authentication tokens.

@ProviderFor(refreshTokensUsecase)
const refreshTokensUsecaseProvider = RefreshTokensUsecaseProvider._();

/// Refresh tokens usecase provider (async)
///
/// Provides usecase for refreshing authentication tokens.

final class RefreshTokensUsecaseProvider
    extends
        $FunctionalProvider<
          AsyncValue<RefreshTokensUsecase>,
          RefreshTokensUsecase,
          FutureOr<RefreshTokensUsecase>
        >
    with
        $FutureModifier<RefreshTokensUsecase>,
        $FutureProvider<RefreshTokensUsecase> {
  /// Refresh tokens usecase provider (async)
  ///
  /// Provides usecase for refreshing authentication tokens.
  const RefreshTokensUsecaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'refreshTokensUsecaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$refreshTokensUsecaseHash();

  @$internal
  @override
  $FutureProviderElement<RefreshTokensUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<RefreshTokensUsecase> create(Ref ref) {
    return refreshTokensUsecase(ref);
  }
}

String _$refreshTokensUsecaseHash() =>
    r'd9bf38a6650a8b8f6bb17ab3cca630314c8ada2a';

/// Save phone number usecase provider (async)
///
/// Provides usecase for saving user phone number.

@ProviderFor(savePhoneNumberUsecase)
const savePhoneNumberUsecaseProvider = SavePhoneNumberUsecaseProvider._();

/// Save phone number usecase provider (async)
///
/// Provides usecase for saving user phone number.

final class SavePhoneNumberUsecaseProvider
    extends
        $FunctionalProvider<
          AsyncValue<SavePhoneNumberUsecase>,
          SavePhoneNumberUsecase,
          FutureOr<SavePhoneNumberUsecase>
        >
    with
        $FutureModifier<SavePhoneNumberUsecase>,
        $FutureProvider<SavePhoneNumberUsecase> {
  /// Save phone number usecase provider (async)
  ///
  /// Provides usecase for saving user phone number.
  const SavePhoneNumberUsecaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'savePhoneNumberUsecaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$savePhoneNumberUsecaseHash();

  @$internal
  @override
  $FutureProviderElement<SavePhoneNumberUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<SavePhoneNumberUsecase> create(Ref ref) {
    return savePhoneNumberUsecase(ref);
  }
}

String _$savePhoneNumberUsecaseHash() =>
    r'61a7b459d3146ee3efad9a033c92d7d22ec32ae3';

/// Verify phone usecase provider (async)
///
/// Provides usecase for verifying user phone number.

@ProviderFor(verifyPhoneUsecase)
const verifyPhoneUsecaseProvider = VerifyPhoneUsecaseProvider._();

/// Verify phone usecase provider (async)
///
/// Provides usecase for verifying user phone number.

final class VerifyPhoneUsecaseProvider
    extends
        $FunctionalProvider<
          AsyncValue<VerifyPhoneUsecase>,
          VerifyPhoneUsecase,
          FutureOr<VerifyPhoneUsecase>
        >
    with
        $FutureModifier<VerifyPhoneUsecase>,
        $FutureProvider<VerifyPhoneUsecase> {
  /// Verify phone usecase provider (async)
  ///
  /// Provides usecase for verifying user phone number.
  const VerifyPhoneUsecaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'verifyPhoneUsecaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$verifyPhoneUsecaseHash();

  @$internal
  @override
  $FutureProviderElement<VerifyPhoneUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<VerifyPhoneUsecase> create(Ref ref) {
    return verifyPhoneUsecase(ref);
  }
}

String _$verifyPhoneUsecaseHash() =>
    r'4cdf943c53d5c6a2da1b7899898d8499724a3c99';

/// Validate OTP usecase provider (async)
///
/// Provides usecase for validating OTP codes.

@ProviderFor(validateOtpUsecase)
const validateOtpUsecaseProvider = ValidateOtpUsecaseProvider._();

/// Validate OTP usecase provider (async)
///
/// Provides usecase for validating OTP codes.

final class ValidateOtpUsecaseProvider
    extends
        $FunctionalProvider<
          AsyncValue<ValidateOtpUsecase>,
          ValidateOtpUsecase,
          FutureOr<ValidateOtpUsecase>
        >
    with
        $FutureModifier<ValidateOtpUsecase>,
        $FutureProvider<ValidateOtpUsecase> {
  /// Validate OTP usecase provider (async)
  ///
  /// Provides usecase for validating OTP codes.
  const ValidateOtpUsecaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'validateOtpUsecaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$validateOtpUsecaseHash();

  @$internal
  @override
  $FutureProviderElement<ValidateOtpUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<ValidateOtpUsecase> create(Ref ref) {
    return validateOtpUsecase(ref);
  }
}

String _$validateOtpUsecaseHash() =>
    r'0889ca1c04ffd2ef6f036b3399cdb1bfcdc196e6';

/// Request reset password OTP usecase provider (async)
///
/// Provides usecase for requesting password reset OTP.

@ProviderFor(requestResetPasswordOtpUsecase)
const requestResetPasswordOtpUsecaseProvider =
    RequestResetPasswordOtpUsecaseProvider._();

/// Request reset password OTP usecase provider (async)
///
/// Provides usecase for requesting password reset OTP.

final class RequestResetPasswordOtpUsecaseProvider
    extends
        $FunctionalProvider<
          AsyncValue<RequestResetPasswordOtpUsecase>,
          RequestResetPasswordOtpUsecase,
          FutureOr<RequestResetPasswordOtpUsecase>
        >
    with
        $FutureModifier<RequestResetPasswordOtpUsecase>,
        $FutureProvider<RequestResetPasswordOtpUsecase> {
  /// Request reset password OTP usecase provider (async)
  ///
  /// Provides usecase for requesting password reset OTP.
  const RequestResetPasswordOtpUsecaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'requestResetPasswordOtpUsecaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$requestResetPasswordOtpUsecaseHash();

  @$internal
  @override
  $FutureProviderElement<RequestResetPasswordOtpUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<RequestResetPasswordOtpUsecase> create(Ref ref) {
    return requestResetPasswordOtpUsecase(ref);
  }
}

String _$requestResetPasswordOtpUsecaseHash() =>
    r'86199ae4be9af26571f8f4950a5982340e7a53e7';

/// Reset password usecase provider (async)
///
/// Provides usecase for resetting user password.

@ProviderFor(resetPasswordUsecase)
const resetPasswordUsecaseProvider = ResetPasswordUsecaseProvider._();

/// Reset password usecase provider (async)
///
/// Provides usecase for resetting user password.

final class ResetPasswordUsecaseProvider
    extends
        $FunctionalProvider<
          AsyncValue<ResetPasswordUsecase>,
          ResetPasswordUsecase,
          FutureOr<ResetPasswordUsecase>
        >
    with
        $FutureModifier<ResetPasswordUsecase>,
        $FutureProvider<ResetPasswordUsecase> {
  /// Reset password usecase provider (async)
  ///
  /// Provides usecase for resetting user password.
  const ResetPasswordUsecaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'resetPasswordUsecaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$resetPasswordUsecaseHash();

  @$internal
  @override
  $FutureProviderElement<ResetPasswordUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<ResetPasswordUsecase> create(Ref ref) {
    return resetPasswordUsecase(ref);
  }
}

String _$resetPasswordUsecaseHash() =>
    r'3a3a4b3125d67c4aa089f053b6fae5b2a8efa914';
