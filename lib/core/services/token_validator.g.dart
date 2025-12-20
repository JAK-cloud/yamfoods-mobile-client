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

@ProviderFor(tokenValidator)
const tokenValidatorProvider = TokenValidatorProvider._();

/// Token validator provider
///
/// Provides a TokenValidator instance with injected logger.

final class TokenValidatorProvider
    extends $FunctionalProvider<TokenValidator, TokenValidator, TokenValidator>
    with $Provider<TokenValidator> {
  /// Token validator provider
  ///
  /// Provides a TokenValidator instance with injected logger.
  const TokenValidatorProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'tokenValidatorProvider',
        isAutoDispose: true,
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

String _$tokenValidatorHash() => r'21873e9ecf15015d36f238a6d1567f1ec7d08566';
