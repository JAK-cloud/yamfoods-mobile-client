// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Manages notification list state and operations.
///
/// **State Management:**
/// - Loads notifications (mock-backed for now)
/// - Marks notifications as read
/// - Updates local state instantly

@ProviderFor(NotificationNotifier)
const notificationProvider = NotificationNotifierProvider._();

/// Manages notification list state and operations.
///
/// **State Management:**
/// - Loads notifications (mock-backed for now)
/// - Marks notifications as read
/// - Updates local state instantly
final class NotificationNotifierProvider
    extends
        $AsyncNotifierProvider<NotificationNotifier, List<UserNotification>> {
  /// Manages notification list state and operations.
  ///
  /// **State Management:**
  /// - Loads notifications (mock-backed for now)
  /// - Marks notifications as read
  /// - Updates local state instantly
  const NotificationNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'notificationProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$notificationNotifierHash();

  @$internal
  @override
  NotificationNotifier create() => NotificationNotifier();
}

String _$notificationNotifierHash() =>
    r'a4f2dc91b327c9fe8cfe022ab06ef69149e1a545';

/// Manages notification list state and operations.
///
/// **State Management:**
/// - Loads notifications (mock-backed for now)
/// - Marks notifications as read
/// - Updates local state instantly

abstract class _$NotificationNotifier
    extends $AsyncNotifier<List<UserNotification>> {
  FutureOr<List<UserNotification>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref
            as $Ref<AsyncValue<List<UserNotification>>, List<UserNotification>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<UserNotification>>,
                List<UserNotification>
              >,
              AsyncValue<List<UserNotification>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
