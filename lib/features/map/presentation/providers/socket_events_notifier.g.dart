// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'socket_events_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Notifier for listening to socket events and emitting UI events
///
/// This notifier:
/// - Connects to Socket.IO if needed
/// - Joins tracking room for the order
/// - Listens to `driver_arrived` and `order:status-updated` events
/// - Emits UI events via `socketUiEventsProvider` for UI to react
///
/// **Usage in UI:**
/// ```dart
/// ref.listen<SocketUiEvent?>(
///   socketUiEventsProvider,
///   (previous, next) {
///     if (next is DriverArrived) {
///       // Navigate to congratulations screen
///     }
///   },
/// );
/// ```

@ProviderFor(SocketEventsNotifier)
const socketEventsProvider = SocketEventsNotifierFamily._();

/// Notifier for listening to socket events and emitting UI events
///
/// This notifier:
/// - Connects to Socket.IO if needed
/// - Joins tracking room for the order
/// - Listens to `driver_arrived` and `order:status-updated` events
/// - Emits UI events via `socketUiEventsProvider` for UI to react
///
/// **Usage in UI:**
/// ```dart
/// ref.listen<SocketUiEvent?>(
///   socketUiEventsProvider,
///   (previous, next) {
///     if (next is DriverArrived) {
///       // Navigate to congratulations screen
///     }
///   },
/// );
/// ```
final class SocketEventsNotifierProvider
    extends $AsyncNotifierProvider<SocketEventsNotifier, void> {
  /// Notifier for listening to socket events and emitting UI events
  ///
  /// This notifier:
  /// - Connects to Socket.IO if needed
  /// - Joins tracking room for the order
  /// - Listens to `driver_arrived` and `order:status-updated` events
  /// - Emits UI events via `socketUiEventsProvider` for UI to react
  ///
  /// **Usage in UI:**
  /// ```dart
  /// ref.listen<SocketUiEvent?>(
  ///   socketUiEventsProvider,
  ///   (previous, next) {
  ///     if (next is DriverArrived) {
  ///       // Navigate to congratulations screen
  ///     }
  ///   },
  /// );
  /// ```
  const SocketEventsNotifierProvider._({
    required SocketEventsNotifierFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'socketEventsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$socketEventsNotifierHash();

  @override
  String toString() {
    return r'socketEventsProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  SocketEventsNotifier create() => SocketEventsNotifier();

  @override
  bool operator ==(Object other) {
    return other is SocketEventsNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$socketEventsNotifierHash() =>
    r'bee0de4386f5e7d1705edf03c7caefbff96a6027';

/// Notifier for listening to socket events and emitting UI events
///
/// This notifier:
/// - Connects to Socket.IO if needed
/// - Joins tracking room for the order
/// - Listens to `driver_arrived` and `order:status-updated` events
/// - Emits UI events via `socketUiEventsProvider` for UI to react
///
/// **Usage in UI:**
/// ```dart
/// ref.listen<SocketUiEvent?>(
///   socketUiEventsProvider,
///   (previous, next) {
///     if (next is DriverArrived) {
///       // Navigate to congratulations screen
///     }
///   },
/// );
/// ```

final class SocketEventsNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          SocketEventsNotifier,
          AsyncValue<void>,
          void,
          FutureOr<void>,
          int
        > {
  const SocketEventsNotifierFamily._()
    : super(
        retry: null,
        name: r'socketEventsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// Notifier for listening to socket events and emitting UI events
  ///
  /// This notifier:
  /// - Connects to Socket.IO if needed
  /// - Joins tracking room for the order
  /// - Listens to `driver_arrived` and `order:status-updated` events
  /// - Emits UI events via `socketUiEventsProvider` for UI to react
  ///
  /// **Usage in UI:**
  /// ```dart
  /// ref.listen<SocketUiEvent?>(
  ///   socketUiEventsProvider,
  ///   (previous, next) {
  ///     if (next is DriverArrived) {
  ///       // Navigate to congratulations screen
  ///     }
  ///   },
  /// );
  /// ```

  SocketEventsNotifierProvider call(int orderId) =>
      SocketEventsNotifierProvider._(argument: orderId, from: this);

  @override
  String toString() => r'socketEventsProvider';
}

/// Notifier for listening to socket events and emitting UI events
///
/// This notifier:
/// - Connects to Socket.IO if needed
/// - Joins tracking room for the order
/// - Listens to `driver_arrived` and `order:status-updated` events
/// - Emits UI events via `socketUiEventsProvider` for UI to react
///
/// **Usage in UI:**
/// ```dart
/// ref.listen<SocketUiEvent?>(
///   socketUiEventsProvider,
///   (previous, next) {
///     if (next is DriverArrived) {
///       // Navigate to congratulations screen
///     }
///   },
/// );
/// ```

abstract class _$SocketEventsNotifier extends $AsyncNotifier<void> {
  late final _$args = ref.$arg as int;
  int get orderId => _$args;

  FutureOr<void> build(int orderId);
  @$mustCallSuper
  @override
  void runBuild() {
    build(_$args);
    final ref = this.ref as $Ref<AsyncValue<void>, void>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<void>, void>,
              AsyncValue<void>,
              Object?,
              Object?
            >;
    element.handleValue(ref, null);
  }
}
