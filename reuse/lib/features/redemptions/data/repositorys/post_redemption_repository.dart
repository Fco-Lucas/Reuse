import 'package:dio/dio.dart';
import 'package:reuse/core/providers/dio_provider.dart';
import 'package:reuse/features/redemptions/data/models/responses/post_redemption_response_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'post_redemption_repository.g.dart';

@riverpod
PostRedemptionRepository postRedemptionRepository(Ref ref) {
  final Dio dio = ref.watch(dioProvider);
  return PostRedemptionRepository(dio);
}

class PostRedemptionRepository {
  final Dio _dio;
  
  PostRedemptionRepository(this._dio);

  Future<PostRedemptionResponseModel> redemptionPost({ required int postId }) async {
    final response = await _dio.post("/posts/$postId/redemptions");
    return PostRedemptionResponseModel.fromJson(response.data);
  }
}