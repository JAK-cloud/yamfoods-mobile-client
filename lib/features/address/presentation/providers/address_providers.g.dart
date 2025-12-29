// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Address API service provider
///
/// Uses dioClientProvider (with auth interceptor) because all address endpoints
/// require authentication.

@ProviderFor(addressApiService)
const addressApiServiceProvider = AddressApiServiceProvider._();

/// Address API service provider
///
/// Uses dioClientProvider (with auth interceptor) because all address endpoints
/// require authentication.

final class AddressApiServiceProvider
    extends
        $FunctionalProvider<
          AsyncValue<AddressApiService>,
          AddressApiService,
          FutureOr<AddressApiService>
        >
    with
        $FutureModifier<AddressApiService>,
        $FutureProvider<AddressApiService> {
  /// Address API service provider
  ///
  /// Uses dioClientProvider (with auth interceptor) because all address endpoints
  /// require authentication.
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
  $FutureProviderElement<AddressApiService> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<AddressApiService> create(Ref ref) {
    return addressApiService(ref);
  }
}

String _$addressApiServiceHash() => r'162c0668a9c675c95ec81b94fb234a7262c2778f';

@ProviderFor(addressRemoteDataSource)
const addressRemoteDataSourceProvider = AddressRemoteDataSourceProvider._();

final class AddressRemoteDataSourceProvider
    extends
        $FunctionalProvider<
          AsyncValue<AddressRemoteDataSource>,
          AddressRemoteDataSource,
          FutureOr<AddressRemoteDataSource>
        >
    with
        $FutureModifier<AddressRemoteDataSource>,
        $FutureProvider<AddressRemoteDataSource> {
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
  $FutureProviderElement<AddressRemoteDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<AddressRemoteDataSource> create(Ref ref) {
    return addressRemoteDataSource(ref);
  }
}

String _$addressRemoteDataSourceHash() =>
    r'608594d125aa544052cb335331a90a1e4bf39157';

@ProviderFor(addressRepository)
const addressRepositoryProvider = AddressRepositoryProvider._();

final class AddressRepositoryProvider
    extends
        $FunctionalProvider<
          AsyncValue<AddressRepository>,
          AddressRepository,
          FutureOr<AddressRepository>
        >
    with
        $FutureModifier<AddressRepository>,
        $FutureProvider<AddressRepository> {
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
  $FutureProviderElement<AddressRepository> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<AddressRepository> create(Ref ref) {
    return addressRepository(ref);
  }
}

String _$addressRepositoryHash() => r'2b3d30dba7232f96ee57f261dc0324d02ba0fbbe';

@ProviderFor(getAddressesUseCase)
const getAddressesUseCaseProvider = GetAddressesUseCaseProvider._();

final class GetAddressesUseCaseProvider
    extends
        $FunctionalProvider<
          AsyncValue<GetAddressesUsecase>,
          GetAddressesUsecase,
          FutureOr<GetAddressesUsecase>
        >
    with
        $FutureModifier<GetAddressesUsecase>,
        $FutureProvider<GetAddressesUsecase> {
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
  $FutureProviderElement<GetAddressesUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<GetAddressesUsecase> create(Ref ref) {
    return getAddressesUseCase(ref);
  }
}

String _$getAddressesUseCaseHash() =>
    r'7a494e46af75af863b4369e1434e9ca014ce8278';

@ProviderFor(createAddressUseCase)
const createAddressUseCaseProvider = CreateAddressUseCaseProvider._();

final class CreateAddressUseCaseProvider
    extends
        $FunctionalProvider<
          AsyncValue<CreateAddressUsecase>,
          CreateAddressUsecase,
          FutureOr<CreateAddressUsecase>
        >
    with
        $FutureModifier<CreateAddressUsecase>,
        $FutureProvider<CreateAddressUsecase> {
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
  $FutureProviderElement<CreateAddressUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<CreateAddressUsecase> create(Ref ref) {
    return createAddressUseCase(ref);
  }
}

String _$createAddressUseCaseHash() =>
    r'2bffe59949f6812b40bb6ee157ddc78b94aff24f';

@ProviderFor(updateAddressUseCase)
const updateAddressUseCaseProvider = UpdateAddressUseCaseProvider._();

final class UpdateAddressUseCaseProvider
    extends
        $FunctionalProvider<
          AsyncValue<UpdateAddressUsecase>,
          UpdateAddressUsecase,
          FutureOr<UpdateAddressUsecase>
        >
    with
        $FutureModifier<UpdateAddressUsecase>,
        $FutureProvider<UpdateAddressUsecase> {
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
  $FutureProviderElement<UpdateAddressUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<UpdateAddressUsecase> create(Ref ref) {
    return updateAddressUseCase(ref);
  }
}

String _$updateAddressUseCaseHash() =>
    r'8d1246f6b3f04f6fde1604f956ec23f94e509151';

@ProviderFor(deleteAddressUseCase)
const deleteAddressUseCaseProvider = DeleteAddressUseCaseProvider._();

final class DeleteAddressUseCaseProvider
    extends
        $FunctionalProvider<
          AsyncValue<DeleteAddressUsecase>,
          DeleteAddressUsecase,
          FutureOr<DeleteAddressUsecase>
        >
    with
        $FutureModifier<DeleteAddressUsecase>,
        $FutureProvider<DeleteAddressUsecase> {
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
  $FutureProviderElement<DeleteAddressUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<DeleteAddressUsecase> create(Ref ref) {
    return deleteAddressUseCase(ref);
  }
}

String _$deleteAddressUseCaseHash() =>
    r'7fa5a809130f983814ed042382feac0689925986';
