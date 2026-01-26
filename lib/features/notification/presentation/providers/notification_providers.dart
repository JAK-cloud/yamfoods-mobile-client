import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/network/di/dio_client.dart';
import '../../../../core/permissions/notification/notification_fcm_service.dart';
import '../../data/datasources/notification_api_service.dart';
import '../../data/datasources/notification_remote_data_source.dart';
import '../../data/datasources/notification_remote_data_source_impl.dart';
import '../../data/repositories/notification_repository_impl.dart';
import '../../domain/entities/notification.dart';
import '../../domain/repositories/notification_repository.dart';
import '../../domain/usecases/get_notifications_usecase.dart';
import '../../domain/usecases/mark_notification_read_usecase.dart';
import '../../domain/usecases/save_or_update_fcm_token_usecase.dart';

part 'notification_providers.g.dart';

// ==================== Data Sources ====================

/// Notification API service provider
///
/// Uses dioClientProvider (with auth interceptor) because notification endpoints
/// require authentication.
@riverpod
Future<NotificationApiService> notificationApiService(Ref ref) async {
  final dio = await ref.watch(dioClientProvider.future);
  return NotificationApiService(dio);
}

/// Notification remote data source provider
@riverpod
Future<NotificationRemoteDataSource> notificationRemoteDataSource(
  Ref ref,
) async {
  final apiService = await ref.watch(notificationApiServiceProvider.future);
  return NotificationRemoteDataSourceImpl(apiService);
}

// ==================== Repository ====================

/// Notification repository provider
@riverpod
Future<NotificationRepository> notificationRepository(Ref ref) async {
  final remoteDataSource = await ref.watch(
    notificationRemoteDataSourceProvider.future,
  );
  return NotificationRepositoryImpl(remoteDataSource);
}

// ==================== UseCases ====================

/// Get notifications usecase provider
@riverpod
Future<GetNotificationsUsecase> getNotificationsUsecase(Ref ref) async {
  final repository = await ref.watch(notificationRepositoryProvider.future);
  return GetNotificationsUsecase(repository);
}

/// Mark notification read usecase provider
@riverpod
Future<MarkNotificationReadUsecase> markNotificationReadUsecase(Ref ref) async {
  final repository = await ref.watch(notificationRepositoryProvider.future);
  return MarkNotificationReadUsecase(repository);
}

/// Save or update FCM token usecase provider
@riverpod
Future<SaveFcmTokenUsecase> saveOrUpdateFcmTokenUsecase(Ref ref) async {
  final repository = await ref.watch(notificationRepositoryProvider.future);
  return SaveFcmTokenUsecase(repository);
}

// ==================== Data Providers ====================

/// Notifications list provider
///
/// Fetches all notifications using the usecase.
/// Returns [AsyncValue<List<Notification>>] which handles loading, error, and data states.
@riverpod
Future<List<Notification>> notifications(Ref ref) async {
  final usecase = await ref.watch(getNotificationsUsecaseProvider.future);
  final result = await usecase.call();

  return result.fold(
    (failure) => throw failure,
    (notifications) => notifications,
  );
}

/// Unread notifications count.
///
/// Only `isRead == false` is considered unread. `null` is treated as read.
@riverpod
Future<int> unreadNotificationsCount(Ref ref) async {
  final list = await ref.watch(notificationsProvider.future);
  return list.where((n) => n.isRead == false).length;
}

/// Marks a notification as read (no body, no response).
///
/// On success, invalidates [notificationsProvider] to refetch latest list.
@riverpod
Future<void> markNotificationRead(Ref ref, int id) async {
  final useCase = await ref.watch(markNotificationReadUsecaseProvider.future);
  final result = await useCase.call(id: id);

  return result.fold((failure) => throw failure, (_) {
    ref.invalidate(notificationsProvider);
    return null;
  });
}

// ==================== Future Provider for Save/Update Operation ====================

/// Parameters for saving or updating FCM token
typedef SaveOrUpdateFcmTokenParams = ({String token, String deviceType});

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
@riverpod
Future<void> saveOrUpdateFcmToken(
  Ref ref,
  SaveOrUpdateFcmTokenParams params,
) async {
  final useCase = await ref.read(saveOrUpdateFcmTokenUsecaseProvider.future);
  final result = await useCase.call(
    token: params.token,
    deviceType: params.deviceType,
  );

  return result.fold((failure) => throw failure, (_) => null);
}

// ==================== Token Refresh Listener ====================

/// Sets up FCM token refresh listener to automatically update token when it changes.
///
/// This provider should be initialized once in the app (e.g., in YamFoodsApp).
/// It listens for token refresh events and automatically saves the new token to the backend.
///
/// Uses `keepAlive: true` to maintain the listener throughout the app lifecycle.
@Riverpod(keepAlive: true)
void fcmTokenRefreshListener(Ref ref) {
  final fcmService = NotificationFcmService.instance;
  final deviceType = NotificationFcmService.getDeviceType();

  // Set up token refresh listener
  // Note: Stream subscription is automatically managed by Riverpod
  // The listener will be active as long as the provider is alive
  fcmService.onTokenRefresh().listen((newToken) async {
    try {
      debugPrint('FCM token refreshed: $newToken');

      // Save the new token to backend
      await ref.read(
        saveOrUpdateFcmTokenProvider((
          token: newToken,
          deviceType: deviceType,
        )).future,
      );

      debugPrint('FCM token updated successfully after refresh');
    } catch (e) {
      debugPrint('Error updating FCM token after refresh: $e');
      // Silently handle errors - don't disrupt app flow
    }
  });

  debugPrint('FCM token refresh listener initialized');
}
