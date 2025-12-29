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
///
/// **CRITICAL:** Uses `keepAlive: true` because this is used by 8+ features (auth, branch,
/// category, subcategory, product, achievement, promocode, promo_banner).
/// Recreating it causes unnecessary overhead and interceptor recreation.

@ProviderFor(baseDioClient)
const baseDioClientProvider = BaseDioClientProvider._();

/// Base Dio client provider (without auth interceptor)
///
/// This creates a Dio instance with base configuration and non-auth interceptors.
/// This is used to break the circular dependency with auth providers.
///
/// The full `dioClientProvider` adds the AuthInterceptor on top of this base client.
///
/// **CRITICAL:** Uses `keepAlive: true` because this is used by 8+ features (auth, branch,
/// category, subcategory, product, achievement, promocode, promo_banner).
/// Recreating it causes unnecessary overhead and interceptor recreation.

final class BaseDioClientProvider extends $FunctionalProvider<Dio, Dio, Dio>
    with $Provider<Dio> {
  /// Base Dio client provider (without auth interceptor)
  ///
  /// This creates a Dio instance with base configuration and non-auth interceptors.
  /// This is used to break the circular dependency with auth providers.
  ///
  /// The full `dioClientProvider` adds the AuthInterceptor on top of this base client.
  ///
  /// **CRITICAL:** Uses `keepAlive: true` because this is used by 8+ features (auth, branch,
  /// category, subcategory, product, achievement, promocode, promo_banner).
  /// Recreating it causes unnecessary overhead and interceptor recreation.
  const BaseDioClientProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'baseDioClientProvider',
        isAutoDispose: false,
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

String _$baseDioClientHash() => r'752f15ff0be29f29396b9ff9af97941b4a11fb3c';

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
///
/// **CRITICAL:** Uses `keepAlive: true` because this is used by 3+ authenticated features
/// (review, cart, order). Recreating it causes expensive auth interceptor recreation
/// and re-watching of auth providers.

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
///
/// **CRITICAL:** Uses `keepAlive: true` because this is used by 3+ authenticated features
/// (review, cart, order). Recreating it causes expensive auth interceptor recreation
/// and re-watching of auth providers.

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
  ///
  /// **CRITICAL:** Uses `keepAlive: true` because this is used by 3+ authenticated features
  /// (review, cart, order). Recreating it causes expensive auth interceptor recreation
  /// and re-watching of auth providers.
  const DioClientProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'dioClientProvider',
        isAutoDispose: false,
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

String _$dioClientHash() => r'5bac427a7dd57796a9497bb60b62fa7811f91040';
