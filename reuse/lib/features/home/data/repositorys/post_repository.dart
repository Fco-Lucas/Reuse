import 'package:dio/dio.dart';
import 'package:reuse/core/providers/dio_provider.dart';
import 'package:reuse/features/home/data/models/responses/post_pageable_response_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'post_repository.g.dart';

@riverpod
PostRepository postRepository(Ref ref) {
  final dio = ref.watch(dioProvider);
  return PostRepository(dio);
}

class PostRepository {
  final Dio _dio;

  PostRepository(this._dio);

  Future<PostPageableResponseModel> getAllPostsPageable({ required int page, required int size }) async {
    final response = await _dio.get("/posts?page=$page&size=$size");
    return PostPageableResponseModel.fromJson(response.data);
  }
}