import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/network/di/dio_client.dart';
import '../../../cart/domain/entities/cart.dart';
import '../../../cart/presentation/providers/cart_notifier.dart';
import '../../data/datasources/product_api_service.dart';
import '../../data/datasources/product_remote_data_source.dart';
import '../../data/datasources/product_remote_data_source_impl.dart';
import '../../data/repositories/product_repository_impl.dart';
import '../../domain/entities/product.dart';
import '../../domain/repositories/product_repository.dart';
import '../../domain/usecases/get_all_branch_products_usecase.dart';
import '../../domain/usecases/get_all_category_products_usecase.dart';
import '../../domain/usecases/get_all_subcategory_products_usecase.dart';
import '../../domain/usecases/get_product_usecase.dart';
import '../../domain/usecases/search_products_usecase.dart';
import '../../data/models/product_filter_request_model.dart';

part 'product_providers.g.dart';

@riverpod
ProductApiService productApiService(Ref ref) {
  final dio = ref.watch(baseDioClientProvider);
  return ProductApiService(dio);
}

@riverpod
ProductRemoteDataSource productRemoteDataSource(Ref ref) {
  final apiService = ref.watch(productApiServiceProvider);
  return ProductRemoteDataSourceImpl(apiService);
}

@riverpod
ProductRepository productRepository(Ref ref) {
  final remoteDataSource = ref.watch(productRemoteDataSourceProvider);
  return ProductRepositoryImpl(remoteDataSource);
}

@riverpod
GetAllBranchProductsUsecase getAllBranchProductsUsecase(Ref ref) {
  final repository = ref.watch(productRepositoryProvider);
  return GetAllBranchProductsUsecase(repository);
}

@riverpod
GetAllCategoryProductsUsecase getAllCategoryProductsUsecase(Ref ref) {
  final repository = ref.watch(productRepositoryProvider);
  return GetAllCategoryProductsUsecase(repository);
}

@riverpod
GetAllSubcategoryProductsUsecase getAllSubcategoryProductsUsecase(Ref ref) {
  final repository = ref.watch(productRepositoryProvider);
  return GetAllSubcategoryProductsUsecase(repository);
}

@riverpod
SearchProductsUsecase searchProductsUsecase(Ref ref) {
  final repository = ref.watch(productRepositoryProvider);
  return SearchProductsUsecase(repository);
}

@riverpod
GetProductUsecase getProductUsecase(Ref ref) {
  final repository = ref.watch(productRepositoryProvider);
  return GetProductUsecase(repository);
}

@riverpod
Future<List<Product>> branchProducts(Ref ref, int branchId) async {
  final usecase = ref.watch(getAllBranchProductsUsecaseProvider);
  final result = await usecase(branchId);

  return result.fold((failure) => throw failure, (products) => products);
}

@riverpod
Future<List<Product>> categoryProducts(
  Ref ref,
  int branchId,
  int categoryId,
) async {
  final usecase = ref.watch(getAllCategoryProductsUsecaseProvider);
  final result = await usecase(branchId, categoryId);

  return result.fold((failure) => throw failure, (products) => products);
}

@riverpod
Future<List<Product>> subcategoryProducts(
  Ref ref,
  int branchId,
  int subCategoryId,
) async {
  final usecase = ref.watch(getAllSubcategoryProductsUsecaseProvider);
  final result = await usecase(branchId, subCategoryId);

  return result.fold((failure) => throw failure, (products) => products);
}

/// Provider that returns related products based on category and subcategory matching.
///
/// This provider filters products from the cached branch products (already loaded
/// from the home page) to find related products. It uses a priority-based filtering
/// system to return the most relevant products first.
///
/// **Filtering Priority (in order):**
/// 1. **Highest Priority**: Products matching both `categoryId` and `subCategoryId`
/// 2. **Second Priority**: Products matching only `subCategoryId`
/// 3. **Third Priority**: Products matching only `categoryId`
///
/// **Behavior:**
/// - Excludes the product with the provided `productId` from results
/// - Returns a maximum of 10 products
/// - Fills remaining slots with lower priority matches if highest priority has < 10 products
/// - Returns empty list if no products match any criteria or if branch products aren't loaded yet
///
/// **Performance:**
/// - Synchronous operation (uses cached data, no network calls)
/// - Single pass through products (O(n) time complexity)
/// - Minimal memory allocation (only creates small lists for categorization)
///
/// **Parameters:**
/// - [productId]: The ID of the product to exclude from results
/// - [branchId]: The branch ID to filter products from
/// - [categoryId]: The category ID to match against
/// - [subCategoryId]: The subcategory ID to match against
///
/// **Returns:**
/// A list of related products (max 10), prioritized by relevance.
@riverpod
List<Product> relatedProducts(
  Ref ref,
  int productId,
  int branchId,
  int categoryId,
  int subCategoryId,
) {
  // Get cached branch products synchronously (already loaded from home page)
  // This uses Riverpod's cache, so no additional network call is made
  final productsAsync = ref.watch(branchProductsProvider(branchId));

  // Extract the cached value if available, otherwise return empty list
  // This ensures the function works even if products haven't loaded yet
  final allProducts = productsAsync.value ?? [];

  // Initialize priority buckets for categorizing products
  // We'll fill these in a single pass through all products
  final bothMatch = <Product>[]; // Matches both category and subcategory
  final subCatMatch = <Product>[]; // Matches only subcategory
  final catMatch = <Product>[]; // Matches only category

  // Single pass filtering: categorize each product into priority buckets
  for (final product in allProducts) {
    // Skip the product we're finding related products for
    if (product.id == productId) continue;

    // Check if product matches the category and/or subcategory
    final matchesCategory = product.categoryId == categoryId;
    final matchesSubCategory = product.subCategoryId == subCategoryId;

    // Categorize product into appropriate priority bucket
    if (matchesCategory && matchesSubCategory) {
      // Highest priority: matches both criteria
      bothMatch.add(product);
    } else if (matchesSubCategory) {
      // Second priority: matches subcategory only
      subCatMatch.add(product);
    } else if (matchesCategory) {
      // Third priority: matches category only
      catMatch.add(product);
    }
  }

  // Combine results in priority order, filling up to 10 products
  final result = <Product>[];

  // Step 1: Add highest priority products (both category and subcategory match)
  result.addAll(bothMatch);

  // Step 2: If we have less than 10 products, fill with second priority (subcategory only)
  if (result.length < 10 && subCatMatch.isNotEmpty) {
    final remaining = 10 - result.length;
    result.addAll(subCatMatch.take(remaining));
  }

  // Step 3: If still less than 10, fill with third priority (category only)
  if (result.length < 10 && catMatch.isNotEmpty) {
    final remaining = 10 - result.length;
    result.addAll(catMatch.take(remaining));
  }

  return result;
}

/// Provider that returns the cart item for a specific product.
///
/// This provider checks if a product is in the cart and returns the
/// corresponding [Cart] item if found, or `null` if the product is not in cart.
///
/// **Behavior:**
/// - Uses cached cart data (no additional network calls)
/// - Returns `null` if cart is not loaded yet or product is not in cart
/// - Synchronous operation (O(n) time complexity where n is cart size)
///
/// **Parameters:**
/// - [product]: The [Product] entity to find in cart
///
/// **Returns:**
/// The [Cart] item if product is in cart, `null` otherwise.
///
/// **Usage:**
/// ```dart
/// final cartItem = ref.watch(productCartItemProvider(product));
/// ```
@riverpod
Cart? productCartItem(Ref ref, Product product) {
  // Get cached cart data synchronously
  final cartAsync = ref.watch(cartProvider(product.branchId));

  // Extract cart list if available
  final carts = cartAsync.value;
  if (carts == null) return null;

  // Find cart item matching the product ID
  try {
    return carts.firstWhere((cart) => cart.productId == product.id);
  } catch (e) {
    // Product not found in cart
    return null;
  }
}

/// Provider that checks if a product is in the cart.
///
/// This provider returns a boolean indicating whether a specific product
/// is currently in the user's cart for a given branch.
///
/// **Behavior:**
/// - Uses cached cart data (no additional network calls)
/// - Returns `false` if cart is not loaded yet
/// - Synchronous operation (O(n) time complexity where n is cart size)
///
/// **Parameters:**
/// - [product]: The [Product] entity to check
///
/// **Returns:**
/// `true` if product is in cart, `false` otherwise.
///
/// **Usage:**
/// ```dart
/// final isInCart = ref.watch(isProductInCartProvider(product));
/// ```
@riverpod
bool isProductInCart(Ref ref, Product product) {
  final cartItem = ref.watch(productCartItemProvider(product));
  return cartItem != null;
}

/// Provider for searching products with filters.
///
/// Takes a branch ID and filter request model, returns filtered products.
/// Automatically refetches when filters change.
///
/// **Parameters:**
/// - [branchId]: The branch ID to search products from
/// - [filters]: The filter request model containing search criteria
///
/// **Returns:**
/// A [Future] that resolves to a list of filtered products.
///
/// **Usage:**
/// ```dart
/// final filters = ProductFilterRequestModel(search: 'pizza');
/// final productsAsync = ref.watch(searchProductsProvider(branchId, filters));
/// ```
@riverpod
Future<List<Product>> searchProducts(
  Ref ref,
  int branchId,
  ProductFilterRequestModel filters,
) async {
  final usecase = ref.watch(searchProductsUsecaseProvider);
  final result = await usecase(branchId, filters);

  return result.fold((failure) => throw failure, (products) => products);
}

/// Product by ID provider
///
/// Fetches a single product by branchId and productId.
@riverpod
Future<Product> productById(Ref ref, int branchId, int productId) async {
  final usecase = ref.watch(getProductUsecaseProvider);
  final result = await usecase.call(branchId: branchId, productId: productId);

  return result.fold((failure) => throw failure, (product) => product);
}
