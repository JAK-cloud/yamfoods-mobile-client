// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(addressApiService)
const addressApiServiceProvider = AddressApiServiceProvider._();

final class AddressApiServiceProvider
    extends
        $FunctionalProvider<
          AddressApiService,
          AddressApiService,
          AddressApiService
        >
    with $Provider<AddressApiService> {
  const AddressApiServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'addressApiServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$addressApiServiceHash();

  @$internal
  @override
  $ProviderElement<AddressApiService> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  AddressApiService create(Ref ref) {
    return addressApiService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AddressApiService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AddressApiService>(value),
    );
  }
}

String _$addressApiServiceHash() => r'272f79d4ad722a85d37e025a61f2193cae5f807a';

@ProviderFor(addressRemoteDataSource)
const addressRemoteDataSourceProvider = AddressRemoteDataSourceProvider._();

final class AddressRemoteDataSourceProvider
    extends
        $FunctionalProvider<
          AddressRemoteDataSource,
          AddressRemoteDataSource,
          AddressRemoteDataSource
        >
    with $Provider<AddressRemoteDataSource> {
  const AddressRemoteDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'addressRemoteDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$addressRemoteDataSourceHash();

  @$internal
  @override
  $ProviderElement<AddressRemoteDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  AddressRemoteDataSource create(Ref ref) {
    return addressRemoteDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AddressRemoteDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AddressRemoteDataSource>(value),
    );
  }
}

String _$addressRemoteDataSourceHash() =>
    r'22ef08416ae06f3ca4355ec2726aac5780ce5c3c';

@ProviderFor(addressRepository)
const addressRepositoryProvider = AddressRepositoryProvider._();

final class AddressRepositoryProvider
    extends
        $FunctionalProvider<
          AddressRepository,
          AddressRepository,
          AddressRepository
        >
    with $Provider<AddressRepository> {
  const AddressRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'addressRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$addressRepositoryHash();

  @$internal
  @override
  $ProviderElement<AddressRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  AddressRepository create(Ref ref) {
    return addressRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AddressRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AddressRepository>(value),
    );
  }
}

String _$addressRepositoryHash() => r'9b985e4d86ed01ea1db9d272a30f23cd418306a3';

@ProviderFor(getAddressesUseCase)
const getAddressesUseCaseProvider = GetAddressesUseCaseProvider._();

final class GetAddressesUseCaseProvider
    extends
        $FunctionalProvider<
          GetAddressesUsecase,
          GetAddressesUsecase,
          GetAddressesUsecase
        >
    with $Provider<GetAddressesUsecase> {
  const GetAddressesUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getAddressesUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getAddressesUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetAddressesUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetAddressesUsecase create(Ref ref) {
    return getAddressesUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetAddressesUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetAddressesUsecase>(value),
    );
  }
}

String _$getAddressesUseCaseHash() =>
    r'4bc459670439f4b352dff3f2b796fc8c3e5c536a';

@ProviderFor(createAddressUseCase)
const createAddressUseCaseProvider = CreateAddressUseCaseProvider._();

final class CreateAddressUseCaseProvider
    extends
        $FunctionalProvider<
          CreateAddressUsecase,
          CreateAddressUsecase,
          CreateAddressUsecase
        >
    with $Provider<CreateAddressUsecase> {
  const CreateAddressUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'createAddressUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$createAddressUseCaseHash();

  @$internal
  @override
  $ProviderElement<CreateAddressUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  CreateAddressUsecase create(Ref ref) {
    return createAddressUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CreateAddressUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CreateAddressUsecase>(value),
    );
  }
}

String _$createAddressUseCaseHash() =>
    r'0c4a55578c5bf295dbe7f51a24b966b409f04809';

@ProviderFor(updateAddressUseCase)
const updateAddressUseCaseProvider = UpdateAddressUseCaseProvider._();

final class UpdateAddressUseCaseProvider
    extends
        $FunctionalProvider<
          UpdateAddressUsecase,
          UpdateAddressUsecase,
          UpdateAddressUsecase
        >
    with $Provider<UpdateAddressUsecase> {
  const UpdateAddressUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'updateAddressUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$updateAddressUseCaseHash();

  @$internal
  @override
  $ProviderElement<UpdateAddressUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  UpdateAddressUsecase create(Ref ref) {
    return updateAddressUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(UpdateAddressUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<UpdateAddressUsecase>(value),
    );
  }
}

String _$updateAddressUseCaseHash() =>
    r'f0524e49de59744f09f29d97c20fad546e282274';

@ProviderFor(deleteAddressUseCase)
const deleteAddressUseCaseProvider = DeleteAddressUseCaseProvider._();

final class DeleteAddressUseCaseProvider
    extends
        $FunctionalProvider<
          DeleteAddressUsecase,
          DeleteAddressUsecase,
          DeleteAddressUsecase
        >
    with $Provider<DeleteAddressUsecase> {
  const DeleteAddressUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'deleteAddressUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$deleteAddressUseCaseHash();

  @$internal
  @override
  $ProviderElement<DeleteAddressUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  DeleteAddressUsecase create(Ref ref) {
    return deleteAddressUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DeleteAddressUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DeleteAddressUsecase>(value),
    );
  }
}

String _$deleteAddressUseCaseHash() =>
    r'd2db62162ac397883b6d9f203f321efbefab5349';
