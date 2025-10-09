import 'package:dio/dio.dart';
import 'package:reuse/core/services/secure_storage_service.dart';

class AuthInterceptor extends Interceptor {
  final SecureStorageService _storageService;

  AuthInterceptor(this._storageService);

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final token = await _storageService.getAuthToken();

    if (token != null) options.headers['Authorization'] = 'Bearer $token';

    return handler.next(options);
  }
}