import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/network/di/dio_client.dart';
import '../../data/datasources/review_api_service.dart';
import '../../data/datasources/review_remote_data_source.dart';
import '../../data/datasources/review_remote_data_source_impl.dart';
import '../../data/repositories/review_repository_impl.dart';
import '../../domain/repositories/review_repository.dart';
import '../../domain/usecases/get_all_reviews_usecase.dart';
import '../../domain/usecases/create_review_usecase.dart';
import '../../domain/usecases/update_review_usecase.dart';
import '../../domain/usecases/delete_review_usecase.dart';

part 'review_providers.g.dart';

@riverpod
ReviewApiService reviewApiService(Ref ref) {
  final dio = ref.watch(baseDioClientProvider);
  return ReviewApiService(dio);
}

@riverpod
ReviewRemoteDataSource reviewRemoteDataSource(Ref ref) {
  final apiService = ref.watch(reviewApiServiceProvider);
  return ReviewRemoteDataSourceImpl(apiService);
}

@riverpod
ReviewRepository reviewRepository(Ref ref) {
  final remoteDataSource = ref.watch(reviewRemoteDataSourceProvider);
  return ReviewRepositoryImpl(remoteDataSource);
}

@riverpod
GetAllReviewsUsecase getAllReviewsUseCase(Ref ref) {
  return GetAllReviewsUsecase(ref.watch(reviewRepositoryProvider));
}

@riverpod
CreateReviewUsecase createReviewUseCase(Ref ref) {
  return CreateReviewUsecase(ref.watch(reviewRepositoryProvider));
}

@riverpod
UpdateReviewUsecase updateReviewUseCase(Ref ref) {
  return UpdateReviewUsecase(ref.watch(reviewRepositoryProvider));
}

@riverpod
DeleteReviewUsecase deleteReviewUseCase(Ref ref) {
  return DeleteReviewUsecase(ref.watch(reviewRepositoryProvider));
}
