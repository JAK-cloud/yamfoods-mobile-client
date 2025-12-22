// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'achievement_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(achievementApiService)
const achievementApiServiceProvider = AchievementApiServiceProvider._();

final class AchievementApiServiceProvider
    extends
        $FunctionalProvider<
          AchievementApiService,
          AchievementApiService,
          AchievementApiService
        >
    with $Provider<AchievementApiService> {
  const AchievementApiServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'achievementApiServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$achievementApiServiceHash();

  @$internal
  @override
  $ProviderElement<AchievementApiService> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  AchievementApiService create(Ref ref) {
    return achievementApiService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AchievementApiService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AchievementApiService>(value),
    );
  }
}

String _$achievementApiServiceHash() =>
    r'5b822b36a8d3ac6e5dee97c37ff782f352e78d64';

@ProviderFor(achievementRemoteDataSource)
const achievementRemoteDataSourceProvider =
    AchievementRemoteDataSourceProvider._();

final class AchievementRemoteDataSourceProvider
    extends
        $FunctionalProvider<
          AchievementRemoteDataSource,
          AchievementRemoteDataSource,
          AchievementRemoteDataSource
        >
    with $Provider<AchievementRemoteDataSource> {
  const AchievementRemoteDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'achievementRemoteDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$achievementRemoteDataSourceHash();

  @$internal
  @override
  $ProviderElement<AchievementRemoteDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  AchievementRemoteDataSource create(Ref ref) {
    return achievementRemoteDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AchievementRemoteDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AchievementRemoteDataSource>(value),
    );
  }
}

String _$achievementRemoteDataSourceHash() =>
    r'0769c479a130b8f0eb37f2cfda5b79e731702e68';

@ProviderFor(achievementRepository)
const achievementRepositoryProvider = AchievementRepositoryProvider._();

final class AchievementRepositoryProvider
    extends
        $FunctionalProvider<
          AchievementRepository,
          AchievementRepository,
          AchievementRepository
        >
    with $Provider<AchievementRepository> {
  const AchievementRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'achievementRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$achievementRepositoryHash();

  @$internal
  @override
  $ProviderElement<AchievementRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  AchievementRepository create(Ref ref) {
    return achievementRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AchievementRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AchievementRepository>(value),
    );
  }
}

String _$achievementRepositoryHash() =>
    r'6503a8aab899db6bb0152ae9b05a599a45b7224a';

@ProviderFor(getAchievementPointUseCase)
const getAchievementPointUseCaseProvider =
    GetAchievementPointUseCaseProvider._();

final class GetAchievementPointUseCaseProvider
    extends
        $FunctionalProvider<
          GetAchievementPointUsecase,
          GetAchievementPointUsecase,
          GetAchievementPointUsecase
        >
    with $Provider<GetAchievementPointUsecase> {
  const GetAchievementPointUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getAchievementPointUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getAchievementPointUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetAchievementPointUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetAchievementPointUsecase create(Ref ref) {
    return getAchievementPointUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetAchievementPointUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetAchievementPointUsecase>(value),
    );
  }
}

String _$getAchievementPointUseCaseHash() =>
    r'0502261f1e438c911a5b3f1d7c2a44329d373bc7';

@ProviderFor(sendPointUseCase)
const sendPointUseCaseProvider = SendPointUseCaseProvider._();

final class SendPointUseCaseProvider
    extends
        $FunctionalProvider<
          SendPointUsecase,
          SendPointUsecase,
          SendPointUsecase
        >
    with $Provider<SendPointUsecase> {
  const SendPointUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'sendPointUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$sendPointUseCaseHash();

  @$internal
  @override
  $ProviderElement<SendPointUsecase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  SendPointUsecase create(Ref ref) {
    return sendPointUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SendPointUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SendPointUsecase>(value),
    );
  }
}

String _$sendPointUseCaseHash() => r'7536151945542584e52dc3299e3b35946c0ba28f';

@ProviderFor(getAchievementHistoryUseCase)
const getAchievementHistoryUseCaseProvider =
    GetAchievementHistoryUseCaseProvider._();

final class GetAchievementHistoryUseCaseProvider
    extends
        $FunctionalProvider<
          GetAchievementHistoryUsecase,
          GetAchievementHistoryUsecase,
          GetAchievementHistoryUsecase
        >
    with $Provider<GetAchievementHistoryUsecase> {
  const GetAchievementHistoryUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getAchievementHistoryUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getAchievementHistoryUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetAchievementHistoryUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetAchievementHistoryUsecase create(Ref ref) {
    return getAchievementHistoryUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetAchievementHistoryUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetAchievementHistoryUsecase>(value),
    );
  }
}

String _$getAchievementHistoryUseCaseHash() =>
    r'2fcb2322d43e0cddbc4e95a2e64769eb23b8e0b1';

/// FutureProvider for getting achievement points.

@ProviderFor(achievementPoint)
const achievementPointProvider = AchievementPointProvider._();

/// FutureProvider for getting achievement points.

final class AchievementPointProvider
    extends
        $FunctionalProvider<
          AsyncValue<AchievementPoint>,
          AchievementPoint,
          FutureOr<AchievementPoint>
        >
    with $FutureModifier<AchievementPoint>, $FutureProvider<AchievementPoint> {
  /// FutureProvider for getting achievement points.
  const AchievementPointProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'achievementPointProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$achievementPointHash();

  @$internal
  @override
  $FutureProviderElement<AchievementPoint> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<AchievementPoint> create(Ref ref) {
    return achievementPoint(ref);
  }
}

String _$achievementPointHash() => r'eea5db3c6422b6b2b74233c70881558910d35a89';

/// FutureProvider for sending points to another user.
///
/// Parameters:
/// - [point]: The number of points to send
/// - [phone]: The phone number of the recipient

@ProviderFor(sendPoint)
const sendPointProvider = SendPointFamily._();

/// FutureProvider for sending points to another user.
///
/// Parameters:
/// - [point]: The number of points to send
/// - [phone]: The phone number of the recipient

final class SendPointProvider
    extends $FunctionalProvider<AsyncValue<void>, void, FutureOr<void>>
    with $FutureModifier<void>, $FutureProvider<void> {
  /// FutureProvider for sending points to another user.
  ///
  /// Parameters:
  /// - [point]: The number of points to send
  /// - [phone]: The phone number of the recipient
  const SendPointProvider._({
    required SendPointFamily super.from,
    required (int, String) super.argument,
  }) : super(
         retry: null,
         name: r'sendPointProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$sendPointHash();

  @override
  String toString() {
    return r'sendPointProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<void> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<void> create(Ref ref) {
    final argument = this.argument as (int, String);
    return sendPoint(ref, argument.$1, argument.$2);
  }

  @override
  bool operator ==(Object other) {
    return other is SendPointProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$sendPointHash() => r'a061ea5b75db956103e577ffed7d1b5e768386a3';

/// FutureProvider for sending points to another user.
///
/// Parameters:
/// - [point]: The number of points to send
/// - [phone]: The phone number of the recipient

final class SendPointFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<void>, (int, String)> {
  const SendPointFamily._()
    : super(
        retry: null,
        name: r'sendPointProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// FutureProvider for sending points to another user.
  ///
  /// Parameters:
  /// - [point]: The number of points to send
  /// - [phone]: The phone number of the recipient

  SendPointProvider call(int point, String phone) =>
      SendPointProvider._(argument: (point, phone), from: this);

  @override
  String toString() => r'sendPointProvider';
}

/// FutureProvider for getting achievement history.

@ProviderFor(achievementHistory)
const achievementHistoryProvider = AchievementHistoryProvider._();

/// FutureProvider for getting achievement history.

final class AchievementHistoryProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<AchievementTransaction>>,
          List<AchievementTransaction>,
          FutureOr<List<AchievementTransaction>>
        >
    with
        $FutureModifier<List<AchievementTransaction>>,
        $FutureProvider<List<AchievementTransaction>> {
  /// FutureProvider for getting achievement history.
  const AchievementHistoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'achievementHistoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$achievementHistoryHash();

  @$internal
  @override
  $FutureProviderElement<List<AchievementTransaction>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<AchievementTransaction>> create(Ref ref) {
    return achievementHistory(ref);
  }
}

String _$achievementHistoryHash() =>
    r'e730d1ffa92fe217af19229f51893cc72f1bac0f';
