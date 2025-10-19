import 'package:dio/dio.dart';
import 'package:reuse/core/providers/dio_provider.dart';
import 'package:reuse/features/home/data/models/responses/post_like_response_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'post_like_repository.g.dart';

@riverpod
PostLikeRepository postLikeRepository(Ref ref) {
  Dio dio = ref.watch(dioProvider);
  return PostLikeRepository(dio);
}

class PostLikeRepository {
  final Dio _dio;

  PostLikeRepository(this._dio);

  Future<PostLikeResponseModel> likePost({ required int postId }) async {
    final response = await _dio.post("/posts/$postId/likes/like");
    return PostLikeResponseModel.fromJson(response.data);
  }

  Future<PostLikeResponseModel> unLikePost({ required int postId }) async {
    final response = await _dio.post("/posts/$postId/likes/unlike");
    return PostLikeResponseModel.fromJson(response.data);
  }
}