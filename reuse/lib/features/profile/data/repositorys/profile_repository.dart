import 'package:dio/dio.dart';
import 'package:reuse/core/enums/auth_user_role.dart';
import 'package:reuse/core/providers/dio_provider.dart';
import 'package:reuse/features/profile/data/models/user_profile_model.dart';
import 'package:reuse/features/restaurants/data/models/responses/restaurant_response_model.dart';
import 'package:reuse/features/users/data/models/responses/user_response_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'profile_repository.g.dart';

@riverpod
ProfileRepository profileRepository(Ref ref) {
  final dio = ref.watch(dioProvider);
  return ProfileRepository(dio);
}

class ProfileRepository {
  final Dio _dio;
  ProfileRepository(this._dio);

  Future<UserProfileModel> getMe({
    required String id,
    required AuthUserRole role,
  }) async {
    switch (role) {
      case AuthUserRole.USER:
        final response = await _dio.get('/users/$id');
        final userData = UserResponseModel.fromJson(response.data);
        // Retorna o tipo .user com o modelo userData dentro
        return UserProfileModel.user(userData); 
        
      case AuthUserRole.RESTAURANT:
        final response = await _dio.get('/restaurants/$id');
        final restaurantData = RestaurantResponseModel.fromJson(response.data);
        // Retorna o tipo .restaurant com o modelo restaurantData dentro
        return UserProfileModel.restaurant(restaurantData);
    }
  }
}