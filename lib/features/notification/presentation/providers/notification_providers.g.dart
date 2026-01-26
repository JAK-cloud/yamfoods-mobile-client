// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Notification API service provider
///
/// Uses dioClientProvider (with auth interceptor) because notification endpoints
/// require authentication.

@ProviderFor(notificationApiService)
const notificationApiServiceProvider = NotificationApiServiceProvider._();

/// Notification API service provider
///
/// Uses dioClientProvider (with auth interceptor) because notification endpoints
/// require authentication.

final class NotificationApiServiceProvider
    extends
        $FunctionalProvider<
          AsyncValue<NotificationApiService>,
          NotificationApiService,
          FutureOr<NotificationApiService>
        >
    with
        $FutureModifier<NotificationApiService>,
        $FutureProvider<NotificationApiService> {
  /// Notification API service provider
  ///
  /// Uses dioClientProvider (with auth interceptor) because notification endpoints
  /// require authentication.
  const NotificationApiServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'notificationApiServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$notificationApiServiceHash();

  @$internal
  @override
  $FutureProviderElement<NotificationApiService> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<NotificationApiService> create(Ref ref) {
    return notificationApiService(ref);
  }
}

String _$notificationApiServiceHash() =>
    r'e05391792e62f6befeeb6a925e823d97eb2a4b19';

/// Notification remote data source provider

@ProviderFor(notificationRemoteDataSource)
const notificationRemoteDataSourceProvider =
    NotificationRemoteDataSourceProvider._();

/// Notification remote data source provider

final class NotificationRemoteDataSourceProvider
    extends
        $FunctionalProvider<
          AsyncValue<NotificationRemoteDataSource>,
          NotificationRemoteDataSource,
          FutureOr<NotificationRemoteDataSource>
        >
    with
        $FutureModifier<NotificationRemoteDataSource>,
        $FutureProvider<NotificationRemoteDataSource> {
  /// Notification remote data source provider
  const NotificationRemoteDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'notificationRemoteDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$notificationRemoteDataSourceHash();

  @$internal
  @override
  $FutureProviderElement<NotificationRemoteDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<NotificationRemoteDataSource> create(Ref ref) {
    return notificationRemoteDataSource(ref);
  }
}

String _$notificationRemoteDataSourceHash() =>
    r'a6b267ec8f320f41e82f14395ad86c3169fb6f59';

/// Notification repository provider

@ProviderFor(notificationRepository)
const notificationRepositoryProvider = NotificationRepositoryProvider._();

/// Notification repository provider

final class NotificationRepositoryProvider
    extends
        $FunctionalProvider<
          AsyncValue<NotificationRepository>,
          NotificationRepository,
          FutureOr<NotificationRepository>
        >
    with
        $FutureModifier<NotificationRepository>,
        $FutureProvider<NotificationRepository> {
  /// Notification repository provider
  const NotificationRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'notificationRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$notificationRepositoryHash();

  @$internal
  @override
  $FutureProviderElement<NotificationRepository> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<NotificationRepository> create(Ref ref) {
    return notificationRepository(ref);
  }
}

String _$notificationRepositoryHash() =>
    r'11d0e9bd4a894995de99050e583c1ff65313f37d';

/// Get notifications usecase provider

@ProviderFor(getNotificationsUsecase)
const getNotificationsUsecaseProvider = GetNotificationsUsecaseProvider._();

/// Get notifications usecase provider

final class GetNotificationsUsecaseProvider
    extends
        $FunctionalProvider<
          AsyncValue<GetNotificationsUsecase>,
          GetNotificationsUsecase,
          FutureOr<GetNotificationsUsecase>
        >
    with
        $FutureModifier<GetNotificationsUsecase>,
        $FutureProvider<GetNotificationsUsecase> {
  /// Get notifications usecase provider
  const GetNotificationsUsecaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getNotificationsUsecaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getNotificationsUsecaseHash();

  @$internal
  @override
  $FutureProviderElement<GetNotificationsUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<GetNotificationsUsecase> create(Ref ref) {
    return getNotificationsUsecase(ref);
  }
}

String _$getNotificationsUsecaseHash() =>
    r'c4873856d6b5ba4ded4354ea39368565225b837c';

/// Mark notification read usecase provider

@ProviderFor(markNotificationReadUsecase)
const markNotificationReadUsecaseProvider =
    MarkNotificationReadUsecaseProvider._();

/// Mark notification read usecase provider

final class MarkNotificationReadUsecaseProvider
    extends
        $FunctionalProvider<
          AsyncValue<MarkNotificationReadUsecase>,
          MarkNotificationReadUsecase,
          FutureOr<MarkNotificationReadUsecase>
        >
    with
        $FutureModifier<MarkNotificationReadUsecase>,
        $FutureProvider<MarkNotificationReadUsecase> {
  /// Mark notification read usecase provider
  const MarkNotificationReadUsecaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'markNotificationReadUsecaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$markNotificationReadUsecaseHash();

  @$internal
  @override
  $FutureProviderElement<MarkNotificationReadUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<MarkNotificationReadUsecase> create(Ref ref) {
    return markNotificationReadUsecase(ref);
  }
}

String _$markNotificationReadUsecaseHash() =>
    r'3143df6ca51d05a31c3f980b1b06b3e54a107eda';

/// Save or update FCM token usecase provider

@ProviderFor(saveOrUpdateFcmTokenUsecase)
const saveOrUpdateFcmTokenUsecaseProvider =
    SaveOrUpdateFcmTokenUsecaseProvider._();

/// Save or update FCM token usecase provider

final class SaveOrUpdateFcmTokenUsecaseProvider
    extends
        $FunctionalProvider<
          AsyncValue<SaveFcmTokenUsecase>,
          SaveFcmTokenUsecase,
          FutureOr<SaveFcmTokenUsecase>
        >
    with
        $FutureModifier<SaveFcmTokenUsecase>,
        $FutureProvider<SaveFcmTokenUsecase> {
  /// Save or update FCM token usecase provider
  const SaveOrUpdateFcmTokenUsecaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'saveOrUpdateFcmTokenUsecaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$saveOrUpdateFcmTokenUsecaseHash();

  @$internal
  @override
  $FutureProviderElement<SaveFcmTokenUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<SaveFcmTokenUsecase> create(Ref ref) {
    return saveOrUpdateFcmTokenUsecase(ref);
  }
}

String _$saveOrUpdateFcmTokenUsecaseHash() =>
    r'394e0405a9dc00fb80d76766f941175eb31846a3';

/// Notifications list provider
///
/// Fetches all notifications using the usecase.
/// Returns [AsyncValue<List<Notification>>] which handles loading, error, and data states.

@ProviderFor(notifications)
const notificationsProvider = NotificationsProvider._();

/// Notifications list provider
///
/// Fetches all notifications using the usecase.
/// Returns [AsyncValue<List<Notification>>] which handles loading, error, and data states.

final class NotificationsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Notification>>,
          List<Notification>,
          FutureOr<List<Notification>>
        >
    with
        $FutureModifier<List<Notification>>,
        $FutureProvider<List<Notification>> {
  /// Notifications list provider
  ///
  /// Fetches all notifications using the usecase.
  /// Returns [AsyncValue<List<Notification>>] which handles loading, error, and data states.
  const NotificationsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'notificationsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$notificationsHash();

  @$internal
  @override
  $FutureProviderElement<List<Notification>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Notification>> create(Ref ref) {
    return notifications(ref);
  }
}

String _$notificationsHash() => r'697861662fd6b0405bc1d35efbaacc036a41ebc7';

/// Unread notifications count.
///
/// Only `isRead == false` is considered unread. `null` is treated as read.

@ProviderFor(unreadNotificationsCount)
const unreadNotificationsCountProvider = UnreadNotificationsCountProvider._();

/// Unread notifications count.
///
/// Only `isRead == false` is considered unread. `null` is treated as read.

final class UnreadNotificationsCountProvider
    extends $FunctionalProvider<AsyncValue<int>, int, FutureOr<int>>
    with $FutureModifier<int>, $FutureProvider<int> {
  /// Unread notifications count.
  ///
  /// Only `isRead == false` is considered unread. `null` is treated as read.
  const UnreadNotificationsCountProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'unreadNotificationsCountProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$unreadNotificationsCountHash();

  @$internal
  @override
  $FutureProviderElement<int> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<int> create(Ref ref) {
    return unreadNotificationsCount(ref);
  }
}

String _$unreadNotificationsCountHash() =>
    r'82a0ac079f3d72bea9e57bc43a2d8c3a2db3446c';

/// Marks a notification as read (no body, no response).
///
/// On success, invalidates [notificationsProvider] to refetch latest list.

@ProviderFor(markNotificationRead)
const markNotificationReadProvider = MarkNotificationReadFamily._();

/// Marks a notification as read (no body, no response).
///
/// On success, invalidates [notificationsProvider] to refetch latest list.

final class MarkNotificationReadProvider
    extends $FunctionalProvider<AsyncValue<void>, void, FutureOr<void>>
    with $FutureModifier<void>, $FutureProvider<void> {
  /// Marks a notification as read (no body, no response).
  ///
  /// On success, invalidates [notificationsProvider] to refetch latest list.
  const MarkNotificationReadProvider._({
    required MarkNotificationReadFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'markNotificationReadProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$markNotificationReadHash();

  @override
  String toString() {
    return r'markNotificationReadProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<void> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<void> create(Ref ref) {
    final argument = this.argument as int;
    return markNotificationRead(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is MarkNotificationReadProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$markNotificationReadHash() =>
    r'09be267e3ca621d39e13530a595434169334ec8e';

/// Marks a notification as read (no body, no response).
///
/// On success, invalidates [notificationsProvider] to refetch latest list.

final class MarkNotificationReadFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<void>, int> {
  const MarkNotificationReadFamily._()
    : super(
        retry: null,
        name: r'markNotificationReadProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// Marks a notification as read (no body, no response).
  ///
  /// On success, invalidates [notificationsProvider] to refetch latest list.

  MarkNotificationReadProvider call(int id) =>
      MarkNotificationReadProvider._(argument: id, from: this);

  @override
  String toString() => r'markNotificationReadProvider';
}

/// Future provider for saving or updating FCM token
///
/// This is a family provider that takes [SaveOrUpdateFcmTokenParams] as parameter.
///
/// Usage:
/// ```dart
/// final result = await ref.read(
///   saveOrUpdateFcmTokenProvider((
///     token: 'fcm_token_here',
///     deviceType: 'ANDROID',
///   )).future,
/// );
/// ```

@ProviderFor(saveOrUpdateFcmToken)
const saveOrUpdateFcmTokenProvider = SaveOrUpdateFcmTokenFamily._();

/// Future provider for saving or updating FCM token
///
/// This is a family provider that takes [SaveOrUpdateFcmTokenParams] as parameter.
///
/// Usage:
/// ```dart
/// final result = await ref.read(
///   saveOrUpdateFcmTokenProvider((
///     token: 'fcm_token_here',
///     deviceType: 'ANDROID',
///   )).future,
/// );
/// ```

final class SaveOrUpdateFcmTokenProvider
    extends $FunctionalProvider<AsyncValue<void>, void, FutureOr<void>>
    with $FutureModifier<void>, $FutureProvider<void> {
  /// Future provider for saving or updating FCM token
  ///
  /// This is a family provider that takes [SaveOrUpdateFcmTokenParams] as parameter.
  ///
  /// Usage:
  /// ```dart
  /// final result = await ref.read(
  ///   saveOrUpdateFcmTokenProvider((
  ///     token: 'fcm_token_here',
  ///     deviceType: 'ANDROID',
  ///   )).future,
  /// );
  /// ```
  const SaveOrUpdateFcmTokenProvider._({
    required SaveOrUpdateFcmTokenFamily super.from,
    required SaveOrUpdateFcmTokenParams super.argument,
  }) : super(
         retry: null,
         name: r'saveOrUpdateFcmTokenProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$saveOrUpdateFcmTokenHash();

  @override
  String toString() {
    return r'saveOrUpdateFcmTokenProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<void> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<void> create(Ref ref) {
    final argument = this.argument as SaveOrUpdateFcmTokenParams;
    return saveOrUpdateFcmToken(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is SaveOrUpdateFcmTokenProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$saveOrUpdateFcmTokenHash() =>
    r'5f3ec74373bb224f35393361a5806d5a7e3bbfca';

/// Future provider for saving or updating FCM token
///
/// This is a family provider that takes [SaveOrUpdateFcmTokenParams] as parameter.
///
/// Usage:
/// ```dart
/// final result = await ref.read(
///   saveOrUpdateFcmTokenProvider((
///     token: 'fcm_token_here',
///     deviceType: 'ANDROID',
///   )).future,
/// );
/// ```

final class SaveOrUpdateFcmTokenFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<void>, SaveOrUpdateFcmTokenParams> {
  const SaveOrUpdateFcmTokenFamily._()
    : super(
        retry: null,
        name: r'saveOrUpdateFcmTokenProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// Future provider for saving or updating FCM token
  ///
  /// This is a family provider that takes [SaveOrUpdateFcmTokenParams] as parameter.
  ///
  /// Usage:
  /// ```dart
  /// final result = await ref.read(
  ///   saveOrUpdateFcmTokenProvider((
  ///     token: 'fcm_token_here',
  ///     deviceType: 'ANDROID',
  ///   )).future,
  /// );
  /// ```

  SaveOrUpdateFcmTokenProvider call(SaveOrUpdateFcmTokenParams params) =>
      SaveOrUpdateFcmTokenProvider._(argument: params, from: this);

  @override
  String toString() => r'saveOrUpdateFcmTokenProvider';
}

/// Sets up FCM token refresh listener to automatically update token when it changes.
///
/// This provider should be initialized once in the app (e.g., in YamFoodsApp).
/// It listens for token refresh events and automatically saves the new token to the backend.
///
/// Uses `keepAlive: true` to maintain the listener throughout the app lifecycle.

@ProviderFor(fcmTokenRefreshListener)
const fcmTokenRefreshListenerProvider = FcmTokenRefreshListenerProvider._();

/// Sets up FCM token refresh listener to automatically update token when it changes.
///
/// This provider should be initialized once in the app (e.g., in YamFoodsApp).
/// It listens for token refresh events and automatically saves the new token to the backend.
///
/// Uses `keepAlive: true` to maintain the listener throughout the app lifecycle.

final class FcmTokenRefreshListenerProvider
    extends $FunctionalProvider<void, void, void>
    with $Provider<void> {
  /// Sets up FCM token refresh listener to automatically update token when it changes.
  ///
  /// This provider should be initialized once in the app (e.g., in YamFoodsApp).
  /// It listens for token refresh events and automatically saves the new token to the backend.
  ///
  /// Uses `keepAlive: true` to maintain the listener throughout the app lifecycle.
  const FcmTokenRefreshListenerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'fcmTokenRefreshListenerProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$fcmTokenRefreshListenerHash();

  @$internal
  @override
  $ProviderElement<void> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  void create(Ref ref) {
    return fcmTokenRefreshListener(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(void value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<void>(value),
    );
  }
}

String _$fcmTokenRefreshListenerHash() =>
    r'5226513814b1e639fdb09b20e200bf1c8167df16';
