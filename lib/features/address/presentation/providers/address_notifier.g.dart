// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Manages address list state and CRUD operations.
///
/// **State Management:**
/// - Optimistically updates local state on success
/// - Emits UI events for success/failure
/// - Tracks loading states per operation

@ProviderFor(AddressNotifier)
const addressProvider = AddressNotifierProvider._();

/// Manages address list state and CRUD operations.
///
/// **State Management:**
/// - Optimistically updates local state on success
/// - Emits UI events for success/failure
/// - Tracks loading states per operation
final class AddressNotifierProvider
    extends $AsyncNotifierProvider<AddressNotifier, List<Address>> {
  /// Manages address list state and CRUD operations.
  ///
  /// **State Management:**
  /// - Optimistically updates local state on success
  /// - Emits UI events for success/failure
  /// - Tracks loading states per operation
  const AddressNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'addressProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$addressNotifierHash();

  @$internal
  @override
  AddressNotifier create() => AddressNotifier();
}

String _$addressNotifierHash() => r'7b7b50f9c698015e2fa3ab6d27304c18a3571cc8';

/// Manages address list state and CRUD operations.
///
/// **State Management:**
/// - Optimistically updates local state on success
/// - Emits UI events for success/failure
/// - Tracks loading states per operation

abstract class _$AddressNotifier extends $AsyncNotifier<List<Address>> {
  FutureOr<List<Address>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<List<Address>>, List<Address>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<Address>>, List<Address>>,
              AsyncValue<List<Address>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
