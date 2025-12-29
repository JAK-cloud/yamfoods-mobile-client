// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_validator.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Token validator provider
///
/// Provides a TokenValidator instance with injected logger.
///
/// Uses `keepAlive: true` because this is a core authentication service used
/// app-wide by the auth interceptor. It's a stateless singleton with no reason to dispose.

@ProviderFor(tokenValidator)
const tokenValidatorProvider = TokenValidatorProvider._();

/// Token validator provider
///
/// Provides a TokenValidator instance with injected logger.
///
/// Uses `keepAlive: true` because this is a core authentication service used
/// app-wide by the auth interceptor. It's a stateless singleton with no reason to dispose.

final class TokenValidatorProvider
    extends $FunctionalProvider<TokenValidator, TokenValidator, TokenValidator>
    with $Provider<TokenValidator> {
  /// Token validator provider
  ///
  /// Provides a TokenValidator instance with injected logger.
  ///
  /// Uses `keepAlive: true` because this is a core authentication service used
  /// app-wide by the auth interceptor. It's a stateless singleton with no reason to dispose.
  const TokenValidatorProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'tokenValidatorProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$tokenValidatorHash();

  @$internal
  @override
  $ProviderElement<TokenValidator> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  TokenValidator create(Ref ref) {
    return tokenValidator(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TokenValidator value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TokenValidator>(value),
    );
  }
}

String _$tokenValidatorHash() => r'59672a7e2a8715a46ce732968c9e5fa0d7ba5c03';
