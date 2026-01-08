// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promo_code_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Manages promo code verification state and operations.
///
/// **State Management:**
/// - Manages verification result state
/// - Emits UI events for success/failure
/// - Tracks loading state for verification

@ProviderFor(PromoCodeNotifier)
const promoCodeProvider = PromoCodeNotifierProvider._();

/// Manages promo code verification state and operations.
///
/// **State Management:**
/// - Manages verification result state
/// - Emits UI events for success/failure
/// - Tracks loading state for verification
final class PromoCodeNotifierProvider
    extends $NotifierProvider<PromoCodeNotifier, PromoCodeVerificationResult?> {
  /// Manages promo code verification state and operations.
  ///
  /// **State Management:**
  /// - Manages verification result state
  /// - Emits UI events for success/failure
  /// - Tracks loading state for verification
  const PromoCodeNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'promoCodeProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$promoCodeNotifierHash();

  @$internal
  @override
  PromoCodeNotifier create() => PromoCodeNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PromoCodeVerificationResult? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PromoCodeVerificationResult?>(value),
    );
  }
}

String _$promoCodeNotifierHash() => r'a2b3a9354b682d9fabcec5c172a3b6cc2c3ad4d2';

/// Manages promo code verification state and operations.
///
/// **State Management:**
/// - Manages verification result state
/// - Emits UI events for success/failure
/// - Tracks loading state for verification

abstract class _$PromoCodeNotifier
    extends $Notifier<PromoCodeVerificationResult?> {
  PromoCodeVerificationResult? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref
            as $Ref<PromoCodeVerificationResult?, PromoCodeVerificationResult?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                PromoCodeVerificationResult?,
                PromoCodeVerificationResult?
              >,
              PromoCodeVerificationResult?,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
