// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'socket_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// SocketManager provider (singleton)
///
/// Provides a single instance of SocketManager for the entire app.
/// Uses `keepAlive: true` to maintain the connection throughout the app lifecycle.
///
/// The SocketManager handles:
/// - Single connection instance management
/// - Connection lifecycle (connect, disconnect, reconnect)
/// - Automatic reconnection with exponential backoff
/// - Event subscription/unsubscription
/// - Authentication via SocketAuthHandler

@ProviderFor(socketManager)
const socketManagerProvider = SocketManagerProvider._();

/// SocketManager provider (singleton)
///
/// Provides a single instance of SocketManager for the entire app.
/// Uses `keepAlive: true` to maintain the connection throughout the app lifecycle.
///
/// The SocketManager handles:
/// - Single connection instance management
/// - Connection lifecycle (connect, disconnect, reconnect)
/// - Automatic reconnection with exponential backoff
/// - Event subscription/unsubscription
/// - Authentication via SocketAuthHandler

final class SocketManagerProvider
    extends
        $FunctionalProvider<
          AsyncValue<SocketManager>,
          SocketManager,
          FutureOr<SocketManager>
        >
    with $FutureModifier<SocketManager>, $FutureProvider<SocketManager> {
  /// SocketManager provider (singleton)
  ///
  /// Provides a single instance of SocketManager for the entire app.
  /// Uses `keepAlive: true` to maintain the connection throughout the app lifecycle.
  ///
  /// The SocketManager handles:
  /// - Single connection instance management
  /// - Connection lifecycle (connect, disconnect, reconnect)
  /// - Automatic reconnection with exponential backoff
  /// - Event subscription/unsubscription
  /// - Authentication via SocketAuthHandler
  const SocketManagerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'socketManagerProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$socketManagerHash();

  @$internal
  @override
  $FutureProviderElement<SocketManager> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<SocketManager> create(Ref ref) {
    return socketManager(ref);
  }
}

String _$socketManagerHash() => r'7614d5e5ddc8d78b901e0a6844704dcfb72a6256';
