// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'core_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Environment configuration provider
///
/// Loads configuration from .env file using flutter_dotenv.
/// Make sure to call `dotenv.load()` in main.dart before using this provider.

@ProviderFor(envConfig)
const envConfigProvider = EnvConfigProvider._();

/// Environment configuration provider
///
/// Loads configuration from .env file using flutter_dotenv.
/// Make sure to call `dotenv.load()` in main.dart before using this provider.

final class EnvConfigProvider
    extends $FunctionalProvider<EnvConfig, EnvConfig, EnvConfig>
    with $Provider<EnvConfig> {
  /// Environment configuration provider
  ///
  /// Loads configuration from .env file using flutter_dotenv.
  /// Make sure to call `dotenv.load()` in main.dart before using this provider.
  const EnvConfigProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'envConfigProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$envConfigHash();

  @$internal
  @override
  $ProviderElement<EnvConfig> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  EnvConfig create(Ref ref) {
    return envConfig(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(EnvConfig value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<EnvConfig>(value),
    );
  }
}

String _$envConfigHash() => r'e036ea6e18a7b6bd71da689d5f658755d473f5c7';

/// Logger provider (singleton)
///
/// Provides a configured Logger instance for the entire app.
/// Uses PrettyPrinter for better formatted logs in debug mode.

@ProviderFor(logger)
const loggerProvider = LoggerProvider._();

/// Logger provider (singleton)
///
/// Provides a configured Logger instance for the entire app.
/// Uses PrettyPrinter for better formatted logs in debug mode.

final class LoggerProvider extends $FunctionalProvider<Logger, Logger, Logger>
    with $Provider<Logger> {
  /// Logger provider (singleton)
  ///
  /// Provides a configured Logger instance for the entire app.
  /// Uses PrettyPrinter for better formatted logs in debug mode.
  const LoggerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'loggerProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$loggerHash();

  @$internal
  @override
  $ProviderElement<Logger> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  Logger create(Ref ref) {
    return logger(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Logger value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Logger>(value),
    );
  }
}

String _$loggerHash() => r'8a9d30ffca398e59ae96376cc09f7acc189c2b1d';

/// FlutterSecureStorage provider (singleton)
///
/// Provides a secure storage instance for storing sensitive data
/// like authentication tokens.

@ProviderFor(secureStorage)
const secureStorageProvider = SecureStorageProvider._();

/// FlutterSecureStorage provider (singleton)
///
/// Provides a secure storage instance for storing sensitive data
/// like authentication tokens.

final class SecureStorageProvider
    extends
        $FunctionalProvider<
          FlutterSecureStorage,
          FlutterSecureStorage,
          FlutterSecureStorage
        >
    with $Provider<FlutterSecureStorage> {
  /// FlutterSecureStorage provider (singleton)
  ///
  /// Provides a secure storage instance for storing sensitive data
  /// like authentication tokens.
  const SecureStorageProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'secureStorageProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$secureStorageHash();

  @$internal
  @override
  $ProviderElement<FlutterSecureStorage> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  FlutterSecureStorage create(Ref ref) {
    return secureStorage(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FlutterSecureStorage value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FlutterSecureStorage>(value),
    );
  }
}

String _$secureStorageHash() => r'a4f75721472cf77465bf47f759c90de5ca30856e';

/// SharedPreferences provider (async, singleton)
///
/// Provides SharedPreferences instance for storing non-sensitive data.
/// This is async because SharedPreferences.getInstance() is async.

@ProviderFor(sharedPreferences)
const sharedPreferencesProvider = SharedPreferencesProvider._();

/// SharedPreferences provider (async, singleton)
///
/// Provides SharedPreferences instance for storing non-sensitive data.
/// This is async because SharedPreferences.getInstance() is async.

final class SharedPreferencesProvider
    extends
        $FunctionalProvider<
          AsyncValue<SharedPreferences>,
          SharedPreferences,
          FutureOr<SharedPreferences>
        >
    with
        $FutureModifier<SharedPreferences>,
        $FutureProvider<SharedPreferences> {
  /// SharedPreferences provider (async, singleton)
  ///
  /// Provides SharedPreferences instance for storing non-sensitive data.
  /// This is async because SharedPreferences.getInstance() is async.
  const SharedPreferencesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'sharedPreferencesProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$sharedPreferencesHash();

  @$internal
  @override
  $FutureProviderElement<SharedPreferences> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<SharedPreferences> create(Ref ref) {
    return sharedPreferences(ref);
  }
}

String _$sharedPreferencesHash() => r'd22b545aefe95500327f9dce52c645d746349271';
