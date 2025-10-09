import 'package:reuse/core/models/jwt_data_model.dart';
import 'package:reuse/core/services/secure_storage_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'jwt_data_provider.g.dart';

@riverpod
Future<JwtDataModel?> jwtData(Ref ref) async {
  final storageService = ref.watch(secureStorageServiceProvider);
  return storageService.getJwtData();
}