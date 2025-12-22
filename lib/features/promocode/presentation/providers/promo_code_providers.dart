import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/network/di/dio_client.dart';
import '../../data/datasources/promo_code_api_service.dart';
import '../../data/datasources/promo_code_remote_data_source.dart';
import '../../data/datasources/promo_code_remote_data_source_impl.dart';
import '../../data/repositories/promo_code_repository_impl.dart';
import '../../domain/entities/promo_code.dart';
import '../../domain/entities/promo_code_verification_result.dart';
import '../../domain/repositories/promo_code_repository.dart';
import '../../domain/usecases/get_promo_codes_usecase.dart';
import '../../domain/usecases/verify_promo_code_usecase.dart';

part 'promo_code_providers.g.dart';

@riverpod
PromoCodeApiService promoCodeApiService(Ref ref) {
  final dio = ref.watch(baseDioClientProvider);
  return PromoCodeApiService(dio);
}

@riverpod
PromoCodeRemoteDataSource promoCodeRemoteDataSource(Ref ref) {
  final apiService = ref.watch(promoCodeApiServiceProvider);
  return PromoCodeRemoteDataSourceImpl(apiService);
}

@riverpod
PromoCodeRepository promoCodeRepository(Ref ref) {
  final remoteDataSource = ref.watch(promoCodeRemoteDataSourceProvider);
  return PromoCodeRepositoryImpl(remoteDataSource);
}

@riverpod
VerifyPromoCodeUsecase verifyPromoCodeUseCase(Ref ref) {
  return VerifyPromoCodeUsecase(ref.watch(promoCodeRepositoryProvider));
}

@riverpod
GetPromoCodesUsecase getPromoCodesUseCase(Ref ref) {
  return GetPromoCodesUsecase(ref.watch(promoCodeRepositoryProvider));
}

/// FutureProvider for getting all promo codes.
@riverpod
Future<List<PromoCode>> promoCodeList(Ref ref) async {
  final useCase = ref.watch(getPromoCodesUseCaseProvider);
  final result = await useCase.call();
  return result.fold((failure) => throw failure, (promoCodes) => promoCodes);
}

/// FutureProvider for verifying a promo code.
///
/// Parameters:
/// - [code]: The promo code to verify
/// - [orderAmount]: The order amount to validate against
@riverpod
Future<PromoCodeVerificationResult> promoCodeVerification(
  Ref ref,
  String code,
  double orderAmount,
) async {
  final useCase = ref.watch(verifyPromoCodeUseCaseProvider);
  final result = await useCase.call(code: code, orderAmount: orderAmount);
  return result.fold(
    (failure) => throw failure,
    (verificationResult) => verificationResult,
  );
}
