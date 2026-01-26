import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../core/network/api/api_routes.dart';
import '../../../../core/network/models/api_response.dart';
import '../models/user_response_model.dart';
import '../models/login_data_model.dart';
import '../models/auth_tokens_model.dart';

part 'auth_api_service.g.dart';

/// Retrofit API service for authentication endpoints.
///
/// All routes use constants from [ApiRoutes] to ensure consistency.
@RestApi()
abstract class AuthApiService {
  factory AuthApiService(Dio dio, {String? baseUrl}) = _AuthApiService;

  @POST(ApiRoutes.register)
  Future<ApiResponse<UserResponseModel>> register(
    @Body() Map<String, dynamic> body,
  );

  @POST(ApiRoutes.saveUserPhone)
  Future<ApiResponse<UserResponseModel>> savePhoneNumber(
    @Body() Map<String, dynamic> body,
  );

  @POST(ApiRoutes.verifyPhone)
  Future<ApiResponse<UserResponseModel>> verifyPhone(
    @Body() Map<String, dynamic> body,
  );

  @POST(ApiRoutes.login)
  Future<ApiResponse<LoginDataModel>> login(@Body() Map<String, dynamic> body);

  @POST(ApiRoutes.googleSignIn)
  Future<ApiResponse<LoginDataModel>> googleSignIn(
    @Body() Map<String, dynamic> body,
  );

  @POST(ApiRoutes.logout)
  Future<void> logout(@Body() Map<String, dynamic> body);

  @POST(ApiRoutes.refreshToken)
  Future<ApiResponse<AuthTokensModel>> refreshToken(
    @Body() Map<String, dynamic> body,
  );

  @POST(ApiRoutes.requestResetPasswordOtp)
  Future<void> requestResetPasswordOtp(@Body() Map<String, dynamic> body);

  @POST(ApiRoutes.validateOtp)
  Future<ApiResponse<UserResponseModel>> validateOtp(
    @Body() Map<String, dynamic> body,
  );

  @POST(ApiRoutes.resetPassword)
  Future<ApiResponse<UserResponseModel>> resetPassword(
    @Body() Map<String, dynamic> body,
  );
}
