import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/providers/core_providers.dart';
import '../../../../core/socket/events.dart';
import '../../../../core/socket/providers/socket_providers.dart';
import '../../../../core/socket/socket_manager.dart';
import 'socket_events.dart';

part 'socket_events_notifier.g.dart';

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
@riverpod
class SocketEventsNotifier extends _$SocketEventsNotifier {
  SocketManager? _socketManager;
  SocketUiEvents? _eventsNotifier; // Store notifier reference before async gap

  @override
  Future<void> build(int orderId) async {
    final logger = ref.watch(loggerProvider);

    // CRITICAL: Store notifier reference BEFORE async gap
    // This ensures we can use it even if provider is disposed
    _eventsNotifier = ref.read(socketUiEventsProvider.notifier);

    _socketManager = await ref.watch(socketManagerProvider.future);

    // Ensure socket is connected
    if (!_socketManager!.isConnected) {
      logger.d('Socket not connected, attempting to connect...');
      final connected = await _socketManager!.connect();
      if (!connected) {
        logger.w(
          'Failed to connect socket for socket events (orderId: $orderId)',
        );
        return;
      }
    }

    // Join tracking room
    final joined = _socketManager!.joinTracking(orderId);
    if (!joined) {
      logger.w('Failed to join tracking room (orderId: $orderId)');
      return;
    }

    // Setup listeners - CRITICAL: Actually call the setup methods
    _setupSocketListeners();

    logger.d('Listening for socket events (orderId: $orderId)');

    
  }

  /// Sets up socket event listeners
  ///
  /// **CRITICAL FIX**: Store notifier reference before async gap and check mounted
  /// to prevent "Cannot use Ref after disposed" errors.
  void _setupSocketListeners() {
    if (_socketManager == null || _eventsNotifier == null) {
      return;
    }

    // Listen to driver_arrived event
    _socketManager!.onSocketEvent(SocketioEvents.eventDriverArrived, (data) {
      // Backend sends: { runtimeType: "success", success: true, data: { orderId, distance, timestamp }, meta: {...} }
      // We don't need to parse it - just emit the event
      //
      // SAFETY: socketUiEventsProvider is persistent (keepAlive: true), so we can
      // safely emit events even if this notifier is disposed. The stored notifier
      // reference allows us to emit without using ref.read().
      _eventsNotifier?.emit(DriverArrived());
    });

    // Listen to order status updated event
    _socketManager!.onSocketEvent(SocketioEvents.eventOrderStatusUpdated, (
      data,
    ) {
      // Emit UI event - safe because socketUiEventsProvider is persistent
      _eventsNotifier?.emit(OrderStatusUpdated());
    });
  }
}
