import 'package:reuse/core/models/jwt_data_model.dart';
import 'package:reuse/core/providers/jwt_data_provider.dart';
import 'package:reuse/features/profile/data/models/user_profile_model.dart';
import 'package:reuse/features/profile/data/repositorys/profile_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_profile_provider.g.dart';

@riverpod
Future<UserProfileModel?> userProfile(Ref ref) async {
  // Usa .future para que ele espere o storage ser lido.
  final JwtDataModel? jwtData = await ref.watch(jwtDataProvider.future);

  // Se não há JWT (usuário deslogado), não há perfil.
  if (jwtData == null) {
    return null;
  }

  // Se há JWT, busca o perfil detalhado no repositório.
  final profileRepository = ref.watch(profileRepositoryProvider);
  
  // Busca o perfil na API.
  final userProfile = await profileRepository.getMe(
    id: jwtData.id,
    role: jwtData.role,
  );
  
  return userProfile;
}