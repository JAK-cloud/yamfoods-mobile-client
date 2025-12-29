import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../domain/entities/address.dart';
import '../../domain/entities/address_request_data.dart';
import 'address_providers.dart';
import 'address_events.dart';
import 'address_loading_providers.dart';

part 'address_notifier.g.dart';

/// Manages address list state and CRUD operations.
///
/// **State Management:**
/// - Optimistically updates local state on success
/// - Emits UI events for success/failure
/// - Tracks loading states per operation
@riverpod
class AddressNotifier extends _$AddressNotifier {
  @override
  Future<List<Address>> build() async {
    return await _load();
  }

  Future<void> load() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => _load());
  }

  Future<void> create(AddressRequestData data) async {
    final createLoading = ref.read(addressCreateLoadingProvider.notifier);
    createLoading.setLoading(true);

    final useCase = await ref.read(createAddressUseCaseProvider.future);
    final result = await useCase.call(data);

    result.fold(
      (failure) {
        ref
            .read(addressUiEventsProvider.notifier)
            .emit(AddressFailure(failure));
      },
      (created) {
        final current = state.value ?? const <Address>[];
        state = AsyncValue.data([created, ...current]);
        ref
            .read(addressUiEventsProvider.notifier)
            .emit(AddressCreated(created, 'Address created successfully'));
      },
    );

    createLoading.setLoading(false);
  }

  Future<void> updateAddress({
    required int id,
    required AddressRequestData data,
  }) async {
    final updating = ref.read(addressUpdateLoadingProvider.notifier);
    updating.start(id);
    final useCase = await ref.read(updateAddressUseCaseProvider.future);
    final result = await useCase.call(id: id, data: data);

    result.fold(
      (failure) {
        ref
            .read(addressUiEventsProvider.notifier)
            .emit(AddressFailure(failure));
      },
      (updated) {
        final list = List<Address>.from(state.value ?? const <Address>[]);
        final idx = list.indexWhere((e) => e.id == id);
        if (idx != -1) list[idx] = updated;
        state = AsyncValue.data(list);
        ref
            .read(addressUiEventsProvider.notifier)
            .emit(AddressUpdated(updated, 'Address updated successfully'));
      },
    );

    updating.stop(id);
  }

  Future<void> delete({required int id}) async {
    final deleting = ref.read(addressDeleteLoadingProvider.notifier);
    deleting.start(id);

    final useCase = await ref.read(deleteAddressUseCaseProvider.future);
    final result = await useCase.call(id);

    result.fold(
      (failure) {
        ref
            .read(addressUiEventsProvider.notifier)
            .emit(AddressFailure(failure));
      },
      (_) {
        final list = List<Address>.from(state.value ?? const <Address>[]);
        list.removeWhere((e) => e.id == id);
        state = AsyncValue.data(list);
        ref
            .read(addressUiEventsProvider.notifier)
            .emit(AddressDeleted(id, 'Address deleted successfully'));
      },
    );

    deleting.stop(id);
  }

  /// Throws [Failure] to be caught by [AsyncValue.guard].
  Future<List<Address>> _load() async {
    final useCase = await ref.read(getAddressesUseCaseProvider.future);
    final result = await useCase.call();
    return result.fold((failure) {
      throw failure;
    }, (items) => items);
  }
}
