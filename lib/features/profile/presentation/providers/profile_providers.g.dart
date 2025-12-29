// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Profile API service provider
///
/// Provides Retrofit API service for profile endpoints.
/// Uses dioClientProvider (with auth interceptor) because all profile endpoints
/// require authentication:
/// - getProfile, updateProfile, changePassword

@ProviderFor(profileApiService)
const profileApiServiceProvider = ProfileApiServiceProvider._();

/// Profile API service provider
///
/// Provides Retrofit API service for profile endpoints.
/// Uses dioClientProvider (with auth interceptor) because all profile endpoints
/// require authentication:
/// - getProfile, updateProfile, changePassword

final class ProfileApiServiceProvider
    extends
        $FunctionalProvider<
          AsyncValue<ProfileApiService>,
          ProfileApiService,
          FutureOr<ProfileApiService>
        >
    with
        $FutureModifier<ProfileApiService>,
        $FutureProvider<ProfileApiService> {
  /// Profile API service provider
  ///
  /// Provides Retrofit API service for profile endpoints.
  /// Uses dioClientProvider (with auth interceptor) because all profile endpoints
  /// require authentication:
  /// - getProfile, updateProfile, changePassword
  const ProfileApiServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'profileApiServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$profileApiServiceHash();

  @$internal
  @override
  $FutureProviderElement<ProfileApiService> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<ProfileApiService> create(Ref ref) {
    return profileApiService(ref);
  }
}

String _$profileApiServiceHash() => r'e062e84dadfa307b302628d4b6146f1bcd830625';

/// Profile remote data source provider
///
/// Provides implementation for fetching profile data from backend.

@ProviderFor(profileRemoteDataSource)
const profileRemoteDataSourceProvider = ProfileRemoteDataSourceProvider._();

/// Profile remote data source provider
///
/// Provides implementation for fetching profile data from backend.

final class ProfileRemoteDataSourceProvider
    extends
        $FunctionalProvider<
          AsyncValue<ProfileRemoteDataSource>,
          ProfileRemoteDataSource,
          FutureOr<ProfileRemoteDataSource>
        >
    with
        $FutureModifier<ProfileRemoteDataSource>,
        $FutureProvider<ProfileRemoteDataSource> {
  /// Profile remote data source provider
  ///
  /// Provides implementation for fetching profile data from backend.
  const ProfileRemoteDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'profileRemoteDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$profileRemoteDataSourceHash();

  @$internal
  @override
  $FutureProviderElement<ProfileRemoteDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<ProfileRemoteDataSource> create(Ref ref) {
    return profileRemoteDataSource(ref);
  }
}

String _$profileRemoteDataSourceHash() =>
    r'4cd1d63f78bbe24e4c8c787301025ae6e5b54374';

/// Profile repository provider
///
/// Provides the main repository for profile operations.

@ProviderFor(profileRepository)
const profileRepositoryProvider = ProfileRepositoryProvider._();

/// Profile repository provider
///
/// Provides the main repository for profile operations.

final class ProfileRepositoryProvider
    extends
        $FunctionalProvider<
          AsyncValue<ProfileRepository>,
          ProfileRepository,
          FutureOr<ProfileRepository>
        >
    with
        $FutureModifier<ProfileRepository>,
        $FutureProvider<ProfileRepository> {
  /// Profile repository provider
  ///
  /// Provides the main repository for profile operations.
  const ProfileRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'profileRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$profileRepositoryHash();

  @$internal
  @override
  $FutureProviderElement<ProfileRepository> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<ProfileRepository> create(Ref ref) {
    return profileRepository(ref);
  }
}

String _$profileRepositoryHash() => r'0a2d14bb8f8e74c2b3cecc002bc5999d632ac1be';

/// Get profile usecase provider
///
/// Provides usecase for fetching the current user's profile.

@ProviderFor(getProfileUseCase)
const getProfileUseCaseProvider = GetProfileUseCaseProvider._();

/// Get profile usecase provider
///
/// Provides usecase for fetching the current user's profile.

final class GetProfileUseCaseProvider
    extends
        $FunctionalProvider<
          AsyncValue<GetProfileUseCase>,
          GetProfileUseCase,
          FutureOr<GetProfileUseCase>
        >
    with
        $FutureModifier<GetProfileUseCase>,
        $FutureProvider<GetProfileUseCase> {
  /// Get profile usecase provider
  ///
  /// Provides usecase for fetching the current user's profile.
  const GetProfileUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getProfileUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getProfileUseCaseHash();

  @$internal
  @override
  $FutureProviderElement<GetProfileUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<GetProfileUseCase> create(Ref ref) {
    return getProfileUseCase(ref);
  }
}

String _$getProfileUseCaseHash() => r'c72dbf997f222546dcac1469995dd23482c3f664';

/// Update profile usecase provider
///
/// Provides usecase for updating the user's profile information.

@ProviderFor(updateProfileUseCase)
const updateProfileUseCaseProvider = UpdateProfileUseCaseProvider._();

/// Update profile usecase provider
///
/// Provides usecase for updating the user's profile information.

final class UpdateProfileUseCaseProvider
    extends
        $FunctionalProvider<
          AsyncValue<UpdateProfileUseCase>,
          UpdateProfileUseCase,
          FutureOr<UpdateProfileUseCase>
        >
    with
        $FutureModifier<UpdateProfileUseCase>,
        $FutureProvider<UpdateProfileUseCase> {
  /// Update profile usecase provider
  ///
  /// Provides usecase for updating the user's profile information.
  const UpdateProfileUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'updateProfileUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$updateProfileUseCaseHash();

  @$internal
  @override
  $FutureProviderElement<UpdateProfileUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<UpdateProfileUseCase> create(Ref ref) {
    return updateProfileUseCase(ref);
  }
}

String _$updateProfileUseCaseHash() =>
    r'2d5bf7414444efdc9ee9f108cada186dc5bbf384';

/// Change password usecase provider
///
/// Provides usecase for changing the user's password.

@ProviderFor(changePasswordUseCase)
const changePasswordUseCaseProvider = ChangePasswordUseCaseProvider._();

/// Change password usecase provider
///
/// Provides usecase for changing the user's password.

final class ChangePasswordUseCaseProvider
    extends
        $FunctionalProvider<
          AsyncValue<ChangePasswordUseCase>,
          ChangePasswordUseCase,
          FutureOr<ChangePasswordUseCase>
        >
    with
        $FutureModifier<ChangePasswordUseCase>,
        $FutureProvider<ChangePasswordUseCase> {
  /// Change password usecase provider
  ///
  /// Provides usecase for changing the user's password.
  const ChangePasswordUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'changePasswordUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$changePasswordUseCaseHash();

  @$internal
  @override
  $FutureProviderElement<ChangePasswordUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<ChangePasswordUseCase> create(Ref ref) {
    return changePasswordUseCase(ref);
  }
}

String _$changePasswordUseCaseHash() =>
    r'b1187f2ae06270d335b8e65d1064fe74d8e2cf81';

/// Simple FutureProvider for fetching profile data
/// No need for events or loading state - just async data

@ProviderFor(userProfile)
const userProfileProvider = UserProfileProvider._();

/// Simple FutureProvider for fetching profile data
/// No need for events or loading state - just async data

final class UserProfileProvider
    extends $FunctionalProvider<AsyncValue<User>, User, FutureOr<User>>
    with $FutureModifier<User>, $FutureProvider<User> {
  /// Simple FutureProvider for fetching profile data
  /// No need for events or loading state - just async data
  const UserProfileProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'userProfileProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$userProfileHash();

  @$internal
  @override
  $FutureProviderElement<User> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<User> create(Ref ref) {
    return userProfile(ref);
  }
}

String _$userProfileHash() => r'9c486412dbd7ac15170e18b1310f9298cc569029';
