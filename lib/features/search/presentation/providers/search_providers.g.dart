// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Provider for managing search filter state.
///
/// This provider holds the current filter configuration for the search screen.
/// When filters change, the searchProducts provider will automatically refetch.

@ProviderFor(SearchFilters)
const searchFiltersProvider = SearchFiltersProvider._();

/// Provider for managing search filter state.
///
/// This provider holds the current filter configuration for the search screen.
/// When filters change, the searchProducts provider will automatically refetch.
final class SearchFiltersProvider
    extends $NotifierProvider<SearchFilters, ProductFilterRequestModel> {
  /// Provider for managing search filter state.
  ///
  /// This provider holds the current filter configuration for the search screen.
  /// When filters change, the searchProducts provider will automatically refetch.
  const SearchFiltersProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'searchFiltersProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$searchFiltersHash();

  @$internal
  @override
  SearchFilters create() => SearchFilters();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ProductFilterRequestModel value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ProductFilterRequestModel>(value),
    );
  }
}

String _$searchFiltersHash() => r'de42b8aaddf3766225aefdefefc49630b04bca42';

/// Provider for managing search filter state.
///
/// This provider holds the current filter configuration for the search screen.
/// When filters change, the searchProducts provider will automatically refetch.

abstract class _$SearchFilters extends $Notifier<ProductFilterRequestModel> {
  ProductFilterRequestModel build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref as $Ref<ProductFilterRequestModel, ProductFilterRequestModel>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<ProductFilterRequestModel, ProductFilterRequestModel>,
              ProductFilterRequestModel,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
