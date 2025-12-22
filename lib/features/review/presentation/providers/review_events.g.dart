// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_events.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ReviewUiEvents)
const reviewUiEventsProvider = ReviewUiEventsProvider._();

final class ReviewUiEventsProvider
    extends $NotifierProvider<ReviewUiEvents, ReviewUiEvent?> {
  const ReviewUiEventsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'reviewUiEventsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$reviewUiEventsHash();

  @$internal
  @override
  ReviewUiEvents create() => ReviewUiEvents();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ReviewUiEvent? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ReviewUiEvent?>(value),
    );
  }
}

String _$reviewUiEventsHash() => r'89382fdd3d8bc350eb5358b3970d16cf28532920';

abstract class _$ReviewUiEvents extends $Notifier<ReviewUiEvent?> {
  ReviewUiEvent? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<ReviewUiEvent?, ReviewUiEvent?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<ReviewUiEvent?, ReviewUiEvent?>,
              ReviewUiEvent?,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
