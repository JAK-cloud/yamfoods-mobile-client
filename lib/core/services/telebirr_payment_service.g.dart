// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'telebirr_payment_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Service for handling Telebirr payment integration.
///
/// **Configuration:**
/// - App ID: 1514631168281605
/// - Short Code: 747582
/// - Receive Code: Provided from order creation response
///
/// **Payment Flow:**
/// 1. Initialize SDK with credentials
/// 2. Start payment process
/// 3. Handle success/error responses

@ProviderFor(TelebirrPaymentService)
const telebirrPaymentServiceProvider = TelebirrPaymentServiceProvider._();

/// Service for handling Telebirr payment integration.
///
/// **Configuration:**
/// - App ID: 1514631168281605
/// - Short Code: 747582
/// - Receive Code: Provided from order creation response
///
/// **Payment Flow:**
/// 1. Initialize SDK with credentials
/// 2. Start payment process
/// 3. Handle success/error responses
final class TelebirrPaymentServiceProvider
    extends $NotifierProvider<TelebirrPaymentService, TelebirrPaymentService> {
  /// Service for handling Telebirr payment integration.
  ///
  /// **Configuration:**
  /// - App ID: 1514631168281605
  /// - Short Code: 747582
  /// - Receive Code: Provided from order creation response
  ///
  /// **Payment Flow:**
  /// 1. Initialize SDK with credentials
  /// 2. Start payment process
  /// 3. Handle success/error responses
  const TelebirrPaymentServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'telebirrPaymentServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$telebirrPaymentServiceHash();

  @$internal
  @override
  TelebirrPaymentService create() => TelebirrPaymentService();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TelebirrPaymentService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TelebirrPaymentService>(value),
    );
  }
}

String _$telebirrPaymentServiceHash() =>
    r'd9ad2644cd218d5f4de529fd3ed59a03bea292bf';

/// Service for handling Telebirr payment integration.
///
/// **Configuration:**
/// - App ID: 1514631168281605
/// - Short Code: 747582
/// - Receive Code: Provided from order creation response
///
/// **Payment Flow:**
/// 1. Initialize SDK with credentials
/// 2. Start payment process
/// 3. Handle success/error responses

abstract class _$TelebirrPaymentService
    extends $Notifier<TelebirrPaymentService> {
  TelebirrPaymentService build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref as $Ref<TelebirrPaymentService, TelebirrPaymentService>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<TelebirrPaymentService, TelebirrPaymentService>,
              TelebirrPaymentService,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
