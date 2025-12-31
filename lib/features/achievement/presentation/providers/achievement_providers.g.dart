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
          AsyncValue<AchievementApiService>,
          AchievementApiService,
          FutureOr<AchievementApiService>
        >
    with
        $FutureModifier<AchievementApiService>,
        $FutureProvider<AchievementApiService> {
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
  $FutureProviderElement<AchievementApiService> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<AchievementApiService> create(Ref ref) {
    return achievementApiService(ref);
  }
}

String _$achievementApiServiceHash() =>
    r'a90d81684340246dc67e80d07c144b68dc38fa84';

@ProviderFor(achievementRemoteDataSource)
const achievementRemoteDataSourceProvider =
    AchievementRemoteDataSourceProvider._();

final class AchievementRemoteDataSourceProvider
    extends
        $FunctionalProvider<
          AsyncValue<AchievementRemoteDataSource>,
          AchievementRemoteDataSource,
          FutureOr<AchievementRemoteDataSource>
        >
    with
        $FutureModifier<AchievementRemoteDataSource>,
        $FutureProvider<AchievementRemoteDataSource> {
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
  $FutureProviderElement<AchievementRemoteDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<AchievementRemoteDataSource> create(Ref ref) {
    return achievementRemoteDataSource(ref);
  }
}

String _$achievementRemoteDataSourceHash() =>
    r'e5fddfeea7a8c9a109044ac7bf87762d97ed901c';

@ProviderFor(achievementRepository)
const achievementRepositoryProvider = AchievementRepositoryProvider._();

final class AchievementRepositoryProvider
    extends
        $FunctionalProvider<
          AsyncValue<AchievementRepository>,
          AchievementRepository,
          FutureOr<AchievementRepository>
        >
    with
        $FutureModifier<AchievementRepository>,
        $FutureProvider<AchievementRepository> {
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
  $FutureProviderElement<AchievementRepository> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<AchievementRepository> create(Ref ref) {
    return achievementRepository(ref);
  }
}

String _$achievementRepositoryHash() =>
    r'efc0df20f6ce6e163b71ed70fee9bbcd0b0a48b8';

@ProviderFor(getAchievementPointUseCase)
const getAchievementPointUseCaseProvider =
    GetAchievementPointUseCaseProvider._();

final class GetAchievementPointUseCaseProvider
    extends
        $FunctionalProvider<
          AsyncValue<GetAchievementPointUsecase>,
          GetAchievementPointUsecase,
          FutureOr<GetAchievementPointUsecase>
        >
    with
        $FutureModifier<GetAchievementPointUsecase>,
        $FutureProvider<GetAchievementPointUsecase> {
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
  $FutureProviderElement<GetAchievementPointUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<GetAchievementPointUsecase> create(Ref ref) {
    return getAchievementPointUseCase(ref);
  }
}

String _$getAchievementPointUseCaseHash() =>
    r'152dcd1c5be65e9ea281cb54b3e0ccbc1a46a481';

@ProviderFor(sendPointUseCase)
const sendPointUseCaseProvider = SendPointUseCaseProvider._();

final class SendPointUseCaseProvider
    extends
        $FunctionalProvider<
          AsyncValue<SendPointUsecase>,
          SendPointUsecase,
          FutureOr<SendPointUsecase>
        >
    with $FutureModifier<SendPointUsecase>, $FutureProvider<SendPointUsecase> {
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
  $FutureProviderElement<SendPointUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<SendPointUsecase> create(Ref ref) {
    return sendPointUseCase(ref);
  }
}

String _$sendPointUseCaseHash() => r'8a3be3f672683291c7ad6676532d383f81a0998b';

@ProviderFor(getAchievementHistoryUseCase)
const getAchievementHistoryUseCaseProvider =
    GetAchievementHistoryUseCaseProvider._();

final class GetAchievementHistoryUseCaseProvider
    extends
        $FunctionalProvider<
          AsyncValue<GetAchievementHistoryUsecase>,
          GetAchievementHistoryUsecase,
          FutureOr<GetAchievementHistoryUsecase>
        >
    with
        $FutureModifier<GetAchievementHistoryUsecase>,
        $FutureProvider<GetAchievementHistoryUsecase> {
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
  $FutureProviderElement<GetAchievementHistoryUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<GetAchievementHistoryUsecase> create(Ref ref) {
    return getAchievementHistoryUseCase(ref);
  }
}

String _$getAchievementHistoryUseCaseHash() =>
    r'53fe58d134f34fb0eb3c7d20ab4680532740bfbb';

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

String _$achievementPointHash() => r'2d589d69d191564fe278a8ead2428f27de8e4b40';

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

String _$sendPointHash() => r'63d0a8c957e20c09e24170fb004fc8ba42ae820b';

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
    r'ca33b29bbaca3723a53bbd79f0b0dd0d5fd02f93';
