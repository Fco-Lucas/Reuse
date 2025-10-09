import 'package:dio/dio.dart';
import 'package:reuse/core/providers/dio_provider.dart';
import 'package:reuse/features/users/data/models/requests/user_create_request_model.dart';
import 'package:reuse/features/users/data/models/responses/user_response_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_repository.g.dart';

@riverpod
UserRepository userRepository(Ref ref) {
  final dio = ref.watch(dioProvider);
  return UserRepository(dio);
}

class UserRepository {
  final Dio _dio;
  
  UserRepository(this._dio);

  Future<UserResponseModel> createUser({required UserCreateRequestModel data}) async {
    final response = await _dio.post("/users", data: data.toJson());
    return UserResponseModel.fromJson(response.data);
  }
}