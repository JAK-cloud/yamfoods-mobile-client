// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Manages review list state and CRUD operations for a specific product.
///
/// **State Management:**
/// - Optimistically updates local state on success
/// - Emits UI events for success/failure
/// - Tracks loading states per operation

@ProviderFor(ReviewNotifier)
const reviewProvider = ReviewNotifierFamily._();

/// Manages review list state and CRUD operations for a specific product.
///
/// **State Management:**
/// - Optimistically updates local state on success
/// - Emits UI events for success/failure
/// - Tracks loading states per operation
final class ReviewNotifierProvider
    extends $AsyncNotifierProvider<ReviewNotifier, List<Review>> {
  /// Manages review list state and CRUD operations for a specific product.
  ///
  /// **State Management:**
  /// - Optimistically updates local state on success
  /// - Emits UI events for success/failure
  /// - Tracks loading states per operation
  const ReviewNotifierProvider._({
    required ReviewNotifierFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'reviewProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$reviewNotifierHash();

  @override
  String toString() {
    return r'reviewProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  ReviewNotifier create() => ReviewNotifier();

  @override
  bool operator ==(Object other) {
    return other is ReviewNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$reviewNotifierHash() => r'55fa50e623f11c728458fb5a4966498e2a6f6819';

/// Manages review list state and CRUD operations for a specific product.
///
/// **State Management:**
/// - Optimistically updates local state on success
/// - Emits UI events for success/failure
/// - Tracks loading states per operation

final class ReviewNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          ReviewNotifier,
          AsyncValue<List<Review>>,
          List<Review>,
          FutureOr<List<Review>>,
          int
        > {
  const ReviewNotifierFamily._()
    : super(
        retry: null,
        name: r'reviewProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// Manages review list state and CRUD operations for a specific product.
  ///
  /// **State Management:**
  /// - Optimistically updates local state on success
  /// - Emits UI events for success/failure
  /// - Tracks loading states per operation

  ReviewNotifierProvider call(int productId) =>
      ReviewNotifierProvider._(argument: productId, from: this);

  @override
  String toString() => r'reviewProvider';
}

/// Manages review list state and CRUD operations for a specific product.
///
/// **State Management:**
/// - Optimistically updates local state on success
/// - Emits UI events for success/failure
/// - Tracks loading states per operation

abstract class _$ReviewNotifier extends $AsyncNotifier<List<Review>> {
  late final _$args = ref.$arg as int;
  int get productId => _$args;

  FutureOr<List<Review>> build(int productId);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref = this.ref as $Ref<AsyncValue<List<Review>>, List<Review>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<Review>>, List<Review>>,
              AsyncValue<List<Review>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
