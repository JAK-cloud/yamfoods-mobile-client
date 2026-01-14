import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../core/network/api/api_routes.dart';
import '../../../../core/network/models/api_response.dart';
import '../models/products_response_model.dart';

part 'product_api_service.g.dart';

@RestApi()
abstract class ProductApiService {
  factory ProductApiService(Dio dio, {String? baseUrl}) = _ProductApiService;

  @GET(ApiRoutes.getAllBranchProducts)
  Future<ApiResponse<ProductsResponseModel>> getAllBranchProducts(
    @Path('branchId') int branchId,
  );

  @GET(ApiRoutes.getAllBranchProducts)
  Future<ApiResponse<ProductsResponseModel>> getAllBranchProductsWithFilters(
    @Path('branchId') int branchId,
    @Query('search') String? search,
    @Query('minPrice') double? minPrice,
    @Query('maxPrice') double? maxPrice,
    @Query('category') int? category,
    @Query('subcategory') int? subcategory,
    @Query('ingredients') String? ingredients,
    @Query('hasDiscount') String? hasDiscount,
  );

  @GET(ApiRoutes.getAllCategoryProducts)
  Future<ApiResponse<ProductsResponseModel>> getAllCategoryProducts(
    @Path('branchId') int branchId,
    @Path('categoryId') int categoryId,
  );

  @GET(ApiRoutes.getAllSubcategoryProducts)
  Future<ApiResponse<ProductsResponseModel>> getAllSubcategoryProducts(
    @Path('branchId') int branchId,
    @Path('subCategoryId') int subCategoryId,
  );
}
