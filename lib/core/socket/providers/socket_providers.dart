import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../features/auth/presentation/providers/auth_providers.dart';
import '../../providers/core_providers.dart';
import '../socket_manager.dart';

part 'socket_providers.g.dart';

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
@Riverpod(keepAlive: true)
Future<SocketManager> socketManager(Ref ref) async {
  final authLocalDataSource = await ref.watch(
    authLocalDataSourceProvider.future,
  );
  final authRepository = await ref.watch(authRepositoryProvider.future);
  final logger = ref.watch(loggerProvider);

  return SocketManager(
    authLocalDataSource: authLocalDataSource,
    authRepository: authRepository,
    logger: logger,
  );
}
