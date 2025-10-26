import 'package:dio/dio.dart';
import 'package:reuse/core/providers/dio_provider.dart';
import 'package:reuse/core/services/secure_storage_service.dart';
import 'package:reuse/features/auth/data/models/requests/login_request_model.dart';
import 'package:reuse/features/auth/data/models/responses/login_response_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_repository.g.dart';

@riverpod
AuthRepository authRepository(Ref ref) {
  final dio = ref.watch(dioProvider);
  final storageService = ref.watch(secureStorageServiceProvider);
  return AuthRepository(dio, storageService);
}

class AuthRepository {
  final Dio _dio;
  final SecureStorageService _storageService;

  AuthRepository(this._dio, this._storageService);

  Future<void> login(LoginRequestModel credentials) async {
    try {
      final response = await _dio.post(
        "/auth",
        data: credentials.toJson()
      );

      final loginResponse = LoginResponseModel.fromJson(response.data);

      await _storageService.saveToken(loginResponse.token);
    } catch (e) {
      rethrow;
    }
  }
}