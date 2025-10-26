import 'package:reuse/features/users/data/models/responses/user_response_model.dart';
import 'package:reuse/features/users/data/repositorys/user_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'find_user_by_id_provider.g.dart'; // Make sure the filename matches

@riverpod
Future<UserResponseModel?> findUserById(
  Ref ref, 
  String userId,
) async {
  try {
    final userRepository = ref.read(userRepositoryProvider);
    return await userRepository.getUserById(userId: userId); 
  } catch (e) {
    return null;
  }
}