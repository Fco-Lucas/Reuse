import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:reuse/core/interceptors/auth_interceptor.dart';
import 'package:reuse/core/interceptors/error_interceptor.dart';
import 'package:reuse/core/providers/logger_provider.dart';
import 'package:reuse/core/services/secure_storage_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dio_provider.g.dart';

// const String androidLocalHost = "http://10.0.2.2:8383/api/v1";
// const String androidLocalHost = "http://172.16.0.142:8383/api/v1";
// const String iosLocalHost = "http://localhost:8383/api/v1";

@riverpod
Dio dio(Ref ref) {
  final options = BaseOptions(
    baseUrl: dotenv.env['BASE_URL']!,
    connectTimeout: const Duration(seconds: 10),
    receiveTimeout: const Duration(seconds: 10),
  );

  final dio = Dio(options);

  final storageService = ref.read(secureStorageServiceProvider);
  final logger = ref.read(loggerProvider);

  // Adiciona os interceptors à instância do Dio.
  dio.interceptors.addAll([
    AuthInterceptor(storageService),
    ErrorInterceptor(logger),
  ]);

  return dio;
}
