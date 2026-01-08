// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'socket_events.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// UI events provider for socket events
///
/// This provider is persistent (keepAlive: true) so events can be emitted
/// even after the SocketEventsNotifier is disposed. This follows the pattern
/// from RIVERPOD_DISPOSE_PATTERN_EXPLANATION.md for handling events that
/// may arrive after navigation.

@ProviderFor(SocketUiEvents)
const socketUiEventsProvider = SocketUiEventsProvider._();

/// UI events provider for socket events
///
/// This provider is persistent (keepAlive: true) so events can be emitted
/// even after the SocketEventsNotifier is disposed. This follows the pattern
/// from RIVERPOD_DISPOSE_PATTERN_EXPLANATION.md for handling events that
/// may arrive after navigation.
final class SocketUiEventsProvider
    extends $NotifierProvider<SocketUiEvents, SocketUiEvent?> {
  /// UI events provider for socket events
  ///
  /// This provider is persistent (keepAlive: true) so events can be emitted
  /// even after the SocketEventsNotifier is disposed. This follows the pattern
  /// from RIVERPOD_DISPOSE_PATTERN_EXPLANATION.md for handling events that
  /// may arrive after navigation.
  const SocketUiEventsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'socketUiEventsProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$socketUiEventsHash();

  @$internal
  @override
  SocketUiEvents create() => SocketUiEvents();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SocketUiEvent? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SocketUiEvent?>(value),
    );
  }
}

String _$socketUiEventsHash() => r'8d617af7687e75e2fefec10f8cc6f39e4db357ec';

/// UI events provider for socket events
///
/// This provider is persistent (keepAlive: true) so events can be emitted
/// even after the SocketEventsNotifier is disposed. This follows the pattern
/// from RIVERPOD_DISPOSE_PATTERN_EXPLANATION.md for handling events that
/// may arrive after navigation.

abstract class _$SocketUiEvents extends $Notifier<SocketUiEvent?> {
  SocketUiEvent? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<SocketUiEvent?, SocketUiEvent?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<SocketUiEvent?, SocketUiEvent?>,
              SocketUiEvent?,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
