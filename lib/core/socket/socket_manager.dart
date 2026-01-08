import 'dart:async';

import 'package:logger/logger.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

import '../../features/auth/data/datasources/auth_local_data_source.dart';
import '../../features/auth/domain/repositories/auth_repository.dart';
import 'socket_auth_handler.dart';
import 'socket_config.dart';
import 'socket_connection_state.dart';

/// Socket.IO manager for handling real-time connections
///
/// Responsibilities:
/// - Single connection instance management
/// - Connection lifecycle (connect, disconnect, reconnect)
/// - Connection state management
/// - Automatic reconnection with exponential backoff
/// - Event subscription/unsubscription
/// - Error handling and recovery
///
/// Authentication is handled by [SocketAuthHandler] to maintain separation of concerns.
///
/// Usage:
/// ```dart
/// final manager = SocketManager(
///   authLocalDataSource: authLocalDataSource,
///   authRepository: authRepository,
///   logger: logger,
/// );
/// await manager.connect();
/// manager.on('driver_location_updated', (data) => print(data));
/// ```
class SocketManager {
  final AuthLocalDataSource _authLocalDataSource;
  final Logger _logger;
  final SocketAuthHandler _authHandler;

  IO.Socket? _socket;
  SocketConnectionState _connectionState =
      const SocketConnectionState.initial();
  final _connectionStateController =
      StreamController<SocketConnectionState>.broadcast();
  final _eventControllers = <String, StreamController<dynamic>>{};

  int _reconnectAttempts = 0;
  Timer? _reconnectTimer;

  /// Stream of connection state changes
  Stream<SocketConnectionState> get connectionStateStream =>
      _connectionStateController.stream;

  /// Current connection state
  SocketConnectionState get connectionState => _connectionState;

  /// Whether socket is currently connected
  bool get isConnected => _socket?.connected ?? false;

  SocketManager({
    required AuthLocalDataSource authLocalDataSource,
    required AuthRepository authRepository,
    required Logger logger,
  }) : _authLocalDataSource = authLocalDataSource,
       _logger = logger,
       _authHandler = SocketAuthHandler(
         authLocalDataSource: authLocalDataSource,
         authRepository: authRepository,
         logger: logger,
       );

  /// Updates connection state and notifies listeners
  void _updateConnectionState(SocketConnectionState newState) {
    if (_connectionState != newState) {
      _connectionState = newState;
      _connectionStateController.add(newState);
      _logger.d('Socket connection state: $newState');
    }
  }

  /// Attempts to connect to the Socket.IO server
  ///
  /// Retrieves JWT token from secure storage and authenticates.
  /// Backend validates the token. If auth fails, token is refreshed and connection retried.
  ///
  /// Returns `true` if connection was initiated successfully, `false` otherwise.
  /// Never throws - all errors are logged and state is updated.
  /// Tracking is optional, so failures don't block user actions.
  Future<bool> connect() async {
    if (_socket?.connected == true) {
      _logger.d('Socket already connected');
      return true;
    }

    try {
      _updateConnectionState(const SocketConnectionState.connecting());

      // Get token from secure storage
      final token = await _authLocalDataSource.getAccessToken();
      if (token == null) {
        _logger.w('No access token found - tracking unavailable');
        _updateConnectionState(
          const SocketConnectionState.error(message: 'No access token found'),
        );
        return false;
      }

      // Get base URL for socket connection
      final baseUrl = SocketConfig.getBaseUrl();

      _logger.d('Connecting to socket server: $baseUrl');

      // Create socket instance with authentication
      // Backend will validate the token
      _socket = IO.io(
        baseUrl,
        IO.OptionBuilder()
            .setTransports(SocketConfig.transports)
            .setAuth({'token': token})
            .enableAutoConnect()
            .enableReconnection()
            .setReconnectionAttempts(SocketConfig.maxReconnectAttempts)
            .setReconnectionDelay(SocketConfig.initialReconnectDelay)
            .setReconnectionDelayMax(SocketConfig.maxReconnectDelay)
            .setTimeout(20000)
            .build(),
      );

      _setupSocketListeners();
      return true;
    } catch (e, stackTrace) {
      _logger.e('Failed to connect socket', error: e, stackTrace: stackTrace);
      _updateConnectionState(
        SocketConnectionState.error(message: e.toString()),
      );
      return false;
    }
  }

  /// Sets up socket event listeners
  void _setupSocketListeners() {
    if (_socket == null) return;

    // Connection successful
    _socket!.onConnect((_) {
      _logger.i('Socket connected');
      _reconnectAttempts = 0;
      _updateConnectionState(const SocketConnectionState.connected());
      _cancelReconnectTimer();
      // Don't reset auth retry here - wait for authentication confirmation
    });

    // Connection error
    _socket!.onConnectError((error) {
      _logger.e('Socket connection error', error: error);

      // Check if this is an auth error using auth handler
      final isAuthError = _authHandler.isAuthError(error);

      if (isAuthError && !_authHandler.hasRetried) {
        // Only retry if we haven't already tried
        // This prevents infinite loops if:
        // 1. Token refresh fails (refresh token also expired)
        // 2. New token is also invalid
        // 3. Any other persistent auth issue
        _logger.d('Auth error detected, attempting token refresh (attempt 1)');
        _handleAuthErrorAndReconnect();
      } else if (isAuthError && _authHandler.hasRetried) {
        // Auth error but we've already tried once - don't loop
        _logger.w('Auth error after retry - stopping to prevent infinite loop');
        _updateConnectionState(
          const SocketConnectionState.error(
            message: 'Authentication failed: Token refresh unsuccessful',
          ),
        );
      } else {
        // Non-auth error - log but don't throw
        _logger.w('Non-auth connection error: $error');
        _updateConnectionState(
          SocketConnectionState.error(message: error.toString()),
        );
      }
    });

    // Disconnected
    _socket!.onDisconnect((reason) {
      _logger.w('Socket disconnected: $reason');
      _updateConnectionState(const SocketConnectionState.disconnected());

      // Attempt reconnection if not manually disconnected
      if (reason != 'io client disconnect') {
        _scheduleReconnect();
      }
    });

    // Reconnection attempt
    _socket!.onReconnect((attempt) {
      _logger.d('Socket reconnecting (attempt $attempt)');
      _updateConnectionState(
        SocketConnectionState.reconnecting(attempt: attempt),
      );
    });

    // Reconnection failed
    _socket!.onReconnectAttempt((attempt) {
      _logger.d('Socket reconnection attempt $attempt');
    });

    // Reconnection error
    _socket!.onReconnectError((error) {
      _logger.e('Socket reconnection error', error: error);
    });

    // Authentication confirmation
    _socket!.on('connect:authenticated', (data) {
      _logger.d('Socket authenticated: $data');
      _authHandler.resetAuthRetry(); // Reset retry flag on successful auth
      // This allows future auth errors to trigger refresh again
    });

    // Error event
    _socket!.on('error', (data) {
      _logger.e('Socket error event: $data');
      _emitEvent('error', data);
    });
  }

  /// Schedules reconnection with exponential backoff
  void _scheduleReconnect() {
    if (!SocketConfig.enableReconnection) return;
    if (_reconnectAttempts >= SocketConfig.maxReconnectAttempts) {
      _logger.w('Max reconnection attempts reached');
      _updateConnectionState(
        const SocketConnectionState.error(
          message: 'Max reconnection attempts reached',
        ),
      );
      return;
    }

    _cancelReconnectTimer();

    final delay = _calculateReconnectDelay();
    _logger.d(
      'Scheduling reconnect in ${delay}ms (attempt ${_reconnectAttempts + 1})',
    );

    _reconnectTimer = Timer(Duration(milliseconds: delay), () {
      _reconnectAttempts++;
      // connect() returns bool but we don't need to check it here
      // Reconnection is automatic and will retry if needed
      connect();
    });
  }

  /// Calculates reconnection delay with exponential backoff
  int _calculateReconnectDelay() {
    final delay =
        (SocketConfig.initialReconnectDelay *
                (SocketConfig.reconnectBackoffMultiplier * _reconnectAttempts))
            .round();
    return delay.clamp(
      SocketConfig.initialReconnectDelay,
      SocketConfig.maxReconnectDelay,
    );
  }

  /// Cancels pending reconnection timer
  void _cancelReconnectTimer() {
    _reconnectTimer?.cancel();
    _reconnectTimer = null;
  }

  /// Disconnects from the server
  ///
  /// Cleans up resources and cancels reconnection attempts.
  Future<void> disconnect() async {
    _cancelReconnectTimer();
    _socket?.disconnect();
    _socket?.dispose();
    _socket = null;
    _reconnectAttempts = 0;
    // Don't reset auth retry here - it should only reset on successful auth
    // This prevents loops if disconnect happens during auth retry
    _updateConnectionState(const SocketConnectionState.disconnected());
    _logger.i('Socket disconnected');
  }

  /// Joins a tracking room for a specific order
  ///
  /// Emits `join_tracking` event with orderId.
  /// Returns `true` if join request was sent, `false` otherwise.
  /// Never throws - all errors are logged.
  bool joinTracking(int orderId) {
    if (!isConnected) {
      _logger.w(
        'Cannot join tracking: socket not connected (orderId: $orderId)',
      );
      return false;
    }

    try {
      _logger.d('Joining tracking for order: $orderId');
      _socket!.emit('join_tracking', {'orderId': orderId});
      return true;
    } catch (e, stackTrace) {
      _logger.e(
        'Failed to join tracking room (orderId: $orderId): $e',
        error: e,
        stackTrace: stackTrace,
      );
      return false;
    }
  }

  /// Leaves a tracking room
  ///
  /// Note: Socket.IO doesn't have explicit leave, but we can
  /// stop listening to events. The server will handle cleanup on disconnect.
  /// Never throws - all errors are logged.
  void leaveTracking() {
    try {
      _logger.d('Leaving tracking room');
      // Socket.IO automatically leaves rooms on disconnect
      // If needed, we can implement explicit leave logic here
    } catch (e, stackTrace) {
      _logger.e(
        'Error leaving tracking room',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }

  /// Subscribes to a socket event
  ///
  /// Returns a stream that emits data whenever the event is received.
  /// Automatically handles event controller creation and cleanup.
  Stream<T> on<T>(String eventName) {
    if (!_eventControllers.containsKey(eventName)) {
      final controller = StreamController<T>.broadcast();
      _eventControllers[eventName] = controller;

      _socket?.on(eventName, (data) {
        try {
          controller.add(data as T);
        } catch (e, stackTrace) {
          _logger.e(
            'Error handling event $eventName: $e',
            error: e,
            stackTrace: stackTrace,
          );
          // Don't rethrow - just log and continue processing other events
        }
      });
    }

    return _eventControllers[eventName]!.stream.cast<T>();
  }

  void onSocketEvent(String event, Function(dynamic) handler) {
    if (_socket == null) {
      _logger.w('Cannot listen to event "$event" - socket not initialized');
      return;
    }
    _socket!.on(event, (data) {
      _logger.i('📨 Event received "$event": $data');
      handler(data);
    });
  }

  /// Emits an event to the server
  ///
  /// Returns `true` if event was emitted, `false` otherwise.
  /// Never throws - all errors are logged.
  bool emit(String eventName, dynamic data) {
    if (!isConnected) {
      _logger.w('Cannot emit event: socket not connected (event: $eventName)');
      return false;
    }

    try {
      _socket!.emit(eventName, data);
      return true;
    } catch (e, stackTrace) {
      _logger.e(
        'Failed to emit event $eventName: $e',
        error: e,
        stackTrace: stackTrace,
      );
      return false;
    }
  }

  /// Internal method to emit events to local subscribers
  void _emitEvent(String eventName, dynamic data) {
    final controller = _eventControllers[eventName];
    if (controller != null && !controller.isClosed) {
      controller.add(data);
    }
  }

  /// Handles authentication error by refreshing token and reconnecting
  ///
  /// Delegates to SocketAuthHandler for token refresh, then reconnects.
  /// Never throws - all errors are logged and state is updated.
  Future<void> _handleAuthErrorAndReconnect() async {
    try {
      final updatedToken = await _authHandler.handleAuthError();

      if (updatedToken == null) {
        _logger.w('No token available after refresh - tracking unavailable');
        _updateConnectionState(
          const SocketConnectionState.error(
            message: 'Authentication failed: No token available',
          ),
        );
        return;
      }

      // Disconnect and reconnect with new token
      // If this fails again with auth error, hasRetried is still true, so we won't loop
      await disconnect();
      await connect(); // Returns bool, but we don't need to check it here

      // Note: auth retry will be reset to false on successful auth (connect:authenticated event)
      // If connect fails again, hasRetried prevents infinite loop
    } catch (e, stackTrace) {
      _logger.e(
        'Failed to handle auth error and reconnect',
        error: e,
        stackTrace: stackTrace,
      );
      _updateConnectionState(
        SocketConnectionState.error(
          message: 'Authentication failed: ${e.toString()}',
        ),
      );
    }
  }

  /// Disposes all resources
  ///
  /// Should be called when the manager is no longer needed.
  void dispose() {
    _cancelReconnectTimer();
    disconnect();
    _connectionStateController.close();
    for (final controller in _eventControllers.values) {
      controller.close();
    }
    _eventControllers.clear();
  }
}
