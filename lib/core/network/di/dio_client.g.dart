// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dio_client.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Base Dio client provider (without auth interceptor)
///
/// This creates a Dio instance with base configuration and non-auth interceptors.
/// This is used to break the circular dependency with auth providers.
///
/// The full `dioClientProvider` adds the AuthInterceptor on top of this base client.

@ProviderFor(baseDioClient)
const baseDioClientProvider = BaseDioClientProvider._();

/// Base Dio client provider (without auth interceptor)
///
/// This creates a Dio instance with base configuration and non-auth interceptors.
/// This is used to break the circular dependency with auth providers.
///
/// The full `dioClientProvider` adds the AuthInterceptor on top of this base client.

final class BaseDioClientProvider extends $FunctionalProvider<Dio, Dio, Dio>
    with $Provider<Dio> {
  /// Base Dio client provider (without auth interceptor)
  ///
  /// This creates a Dio instance with base configuration and non-auth interceptors.
  /// This is used to break the circular dependency with auth providers.
  ///
  /// The full `dioClientProvider` adds the AuthInterceptor on top of this base client.
  const BaseDioClientProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'baseDioClientProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$baseDioClientHash();

  @$internal
  @override
  $ProviderElement<Dio> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  Dio create(Ref ref) {
    return baseDioClient(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Dio value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Dio>(value),
    );
  }
}

String _$baseDioClientHash() => r'c98c3e1bd6634b49553c08df4a193c50c41f4d00';

/// Dio client provider with all interceptors configured (including auth)
///
/// This provider creates a Dio instance with:
/// 1. Base configuration (URL, timeouts, headers)
/// 2. Auth interceptor (token management) - added first
/// 3. Retry interceptor (automatic retries)
/// 4. Logging interceptor (request/response logging)
///
/// The interceptors are added in the correct order to ensure proper execution.
///
/// Note: This uses baseDioClient and adds AuthInterceptor to avoid circular dependency.
/// Auth providers are watched here to inject into AuthInterceptor.

@ProviderFor(dioClient)
const dioClientProvider = DioClientProvider._();

/// Dio client provider with all interceptors configured (including auth)
///
/// This provider creates a Dio instance with:
/// 1. Base configuration (URL, timeouts, headers)
/// 2. Auth interceptor (token management) - added first
/// 3. Retry interceptor (automatic retries)
/// 4. Logging interceptor (request/response logging)
///
/// The interceptors are added in the correct order to ensure proper execution.
///
/// Note: This uses baseDioClient and adds AuthInterceptor to avoid circular dependency.
/// Auth providers are watched here to inject into AuthInterceptor.

final class DioClientProvider
    extends $FunctionalProvider<AsyncValue<Dio>, Dio, FutureOr<Dio>>
    with $FutureModifier<Dio>, $FutureProvider<Dio> {
  /// Dio client provider with all interceptors configured (including auth)
  ///
  /// This provider creates a Dio instance with:
  /// 1. Base configuration (URL, timeouts, headers)
  /// 2. Auth interceptor (token management) - added first
  /// 3. Retry interceptor (automatic retries)
  /// 4. Logging interceptor (request/response logging)
  ///
  /// The interceptors are added in the correct order to ensure proper execution.
  ///
  /// Note: This uses baseDioClient and adds AuthInterceptor to avoid circular dependency.
  /// Auth providers are watched here to inject into AuthInterceptor.
  const DioClientProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'dioClientProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$dioClientHash();

  @$internal
  @override
  $FutureProviderElement<Dio> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<Dio> create(Ref ref) {
    return dioClient(ref);
  }
}

String _$dioClientHash() => r'8d45e32aa6c761c1b65ec0b7fbb44646612f652d';
