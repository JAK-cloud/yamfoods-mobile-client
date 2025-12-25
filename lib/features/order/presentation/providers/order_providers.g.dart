// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Order API service provider
///
/// Provides Retrofit API service for order endpoints.
/// Uses dioClientProvider since order endpoints require authentication.

@ProviderFor(orderApiService)
const orderApiServiceProvider = OrderApiServiceProvider._();

/// Order API service provider
///
/// Provides Retrofit API service for order endpoints.
/// Uses dioClientProvider since order endpoints require authentication.

final class OrderApiServiceProvider
    extends
        $FunctionalProvider<
          AsyncValue<OrderApiService>,
          OrderApiService,
          FutureOr<OrderApiService>
        >
    with $FutureModifier<OrderApiService>, $FutureProvider<OrderApiService> {
  /// Order API service provider
  ///
  /// Provides Retrofit API service for order endpoints.
  /// Uses dioClientProvider since order endpoints require authentication.
  const OrderApiServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'orderApiServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$orderApiServiceHash();

  @$internal
  @override
  $FutureProviderElement<OrderApiService> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<OrderApiService> create(Ref ref) {
    return orderApiService(ref);
  }
}

String _$orderApiServiceHash() => r'eeff5619c09783b4fb074530be8ba473a3a4910c';

/// Order remote data source provider
///
/// Provides implementation for fetching order data from backend.

@ProviderFor(orderRemoteDataSource)
const orderRemoteDataSourceProvider = OrderRemoteDataSourceProvider._();

/// Order remote data source provider
///
/// Provides implementation for fetching order data from backend.

final class OrderRemoteDataSourceProvider
    extends
        $FunctionalProvider<
          AsyncValue<OrderRemoteDataSource>,
          OrderRemoteDataSource,
          FutureOr<OrderRemoteDataSource>
        >
    with
        $FutureModifier<OrderRemoteDataSource>,
        $FutureProvider<OrderRemoteDataSource> {
  /// Order remote data source provider
  ///
  /// Provides implementation for fetching order data from backend.
  const OrderRemoteDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'orderRemoteDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$orderRemoteDataSourceHash();

  @$internal
  @override
  $FutureProviderElement<OrderRemoteDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<OrderRemoteDataSource> create(Ref ref) {
    return orderRemoteDataSource(ref);
  }
}

String _$orderRemoteDataSourceHash() =>
    r'6fe1c858bb2125e477f373396498df4ddd7039a0';

/// Order repository provider
///
/// Provides the main repository for order operations.

@ProviderFor(orderRepository)
const orderRepositoryProvider = OrderRepositoryProvider._();

/// Order repository provider
///
/// Provides the main repository for order operations.

final class OrderRepositoryProvider
    extends
        $FunctionalProvider<
          AsyncValue<OrderRepository>,
          OrderRepository,
          FutureOr<OrderRepository>
        >
    with $FutureModifier<OrderRepository>, $FutureProvider<OrderRepository> {
  /// Order repository provider
  ///
  /// Provides the main repository for order operations.
  const OrderRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'orderRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$orderRepositoryHash();

  @$internal
  @override
  $FutureProviderElement<OrderRepository> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<OrderRepository> create(Ref ref) {
    return orderRepository(ref);
  }
}

String _$orderRepositoryHash() => r'985408a6667ab31427524f9b1981287c28f4f221';

/// Get all orders usecase provider
///
/// Provides usecase for fetching all orders.

@ProviderFor(getAllOrdersUseCase)
const getAllOrdersUseCaseProvider = GetAllOrdersUseCaseProvider._();

/// Get all orders usecase provider
///
/// Provides usecase for fetching all orders.

final class GetAllOrdersUseCaseProvider
    extends
        $FunctionalProvider<
          AsyncValue<GetAllOrdersUseCase>,
          GetAllOrdersUseCase,
          FutureOr<GetAllOrdersUseCase>
        >
    with
        $FutureModifier<GetAllOrdersUseCase>,
        $FutureProvider<GetAllOrdersUseCase> {
  /// Get all orders usecase provider
  ///
  /// Provides usecase for fetching all orders.
  const GetAllOrdersUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getAllOrdersUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getAllOrdersUseCaseHash();

  @$internal
  @override
  $FutureProviderElement<GetAllOrdersUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<GetAllOrdersUseCase> create(Ref ref) {
    return getAllOrdersUseCase(ref);
  }
}

String _$getAllOrdersUseCaseHash() =>
    r'1efdbffdfd4ffd6d16080a77eeed427363d331de';

/// Get order detail usecase provider
///
/// Provides usecase for fetching order details.

@ProviderFor(getOrderDetailUseCase)
const getOrderDetailUseCaseProvider = GetOrderDetailUseCaseProvider._();

/// Get order detail usecase provider
///
/// Provides usecase for fetching order details.

final class GetOrderDetailUseCaseProvider
    extends
        $FunctionalProvider<
          AsyncValue<GetOrderDetailUseCase>,
          GetOrderDetailUseCase,
          FutureOr<GetOrderDetailUseCase>
        >
    with
        $FutureModifier<GetOrderDetailUseCase>,
        $FutureProvider<GetOrderDetailUseCase> {
  /// Get order detail usecase provider
  ///
  /// Provides usecase for fetching order details.
  const GetOrderDetailUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getOrderDetailUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getOrderDetailUseCaseHash();

  @$internal
  @override
  $FutureProviderElement<GetOrderDetailUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<GetOrderDetailUseCase> create(Ref ref) {
    return getOrderDetailUseCase(ref);
  }
}

String _$getOrderDetailUseCaseHash() =>
    r'5e87c65af841652ee3eae15c060ac5796e3185c2';

/// All orders list provider
///
/// Fetches all orders using the usecase.
/// Returns [AsyncValue<List<Orderr>>] which handles loading, error, and data states.

@ProviderFor(allOrders)
const allOrdersProvider = AllOrdersProvider._();

/// All orders list provider
///
/// Fetches all orders using the usecase.
/// Returns [AsyncValue<List<Orderr>>] which handles loading, error, and data states.

final class AllOrdersProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Orderr>>,
          List<Orderr>,
          FutureOr<List<Orderr>>
        >
    with $FutureModifier<List<Orderr>>, $FutureProvider<List<Orderr>> {
  /// All orders list provider
  ///
  /// Fetches all orders using the usecase.
  /// Returns [AsyncValue<List<Orderr>>] which handles loading, error, and data states.
  const AllOrdersProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'allOrdersProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$allOrdersHash();

  @$internal
  @override
  $FutureProviderElement<List<Orderr>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Orderr>> create(Ref ref) {
    return allOrders(ref);
  }
}

String _$allOrdersHash() => r'0667dbae55a7d533fc84b4d2f322c57e23bc2b63';

/// Order detail provider
///
/// Fetches order detail by orderId using the usecase.
/// Returns [AsyncValue<OrderDetail>] which handles loading, error, and data states.

@ProviderFor(orderDetail)
const orderDetailProvider = OrderDetailFamily._();

/// Order detail provider
///
/// Fetches order detail by orderId using the usecase.
/// Returns [AsyncValue<OrderDetail>] which handles loading, error, and data states.

final class OrderDetailProvider
    extends
        $FunctionalProvider<
          AsyncValue<OrderDetail>,
          OrderDetail,
          FutureOr<OrderDetail>
        >
    with $FutureModifier<OrderDetail>, $FutureProvider<OrderDetail> {
  /// Order detail provider
  ///
  /// Fetches order detail by orderId using the usecase.
  /// Returns [AsyncValue<OrderDetail>] which handles loading, error, and data states.
  const OrderDetailProvider._({
    required OrderDetailFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'orderDetailProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$orderDetailHash();

  @override
  String toString() {
    return r'orderDetailProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<OrderDetail> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<OrderDetail> create(Ref ref) {
    final argument = this.argument as int;
    return orderDetail(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is OrderDetailProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$orderDetailHash() => r'a13ba8790eaab90d5b9b92dbd89685ab5c24d37c';

/// Order detail provider
///
/// Fetches order detail by orderId using the usecase.
/// Returns [AsyncValue<OrderDetail>] which handles loading, error, and data states.

final class OrderDetailFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<OrderDetail>, int> {
  const OrderDetailFamily._()
    : super(
        retry: null,
        name: r'orderDetailProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// Order detail provider
  ///
  /// Fetches order detail by orderId using the usecase.
  /// Returns [AsyncValue<OrderDetail>] which handles loading, error, and data states.

  OrderDetailProvider call(int orderId) =>
      OrderDetailProvider._(argument: orderId, from: this);

  @override
  String toString() => r'orderDetailProvider';
}
