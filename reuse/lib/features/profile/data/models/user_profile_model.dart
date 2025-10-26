import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reuse/features/restaurants/data/models/responses/restaurant_response_model.dart';
import 'package:reuse/features/users/data/models/responses/user_response_model.dart';

part 'user_profile_model.freezed.dart';

@freezed
sealed class UserProfileModel with _$UserProfileModel {
  const factory UserProfileModel.user(
    UserResponseModel user,
  ) = _UserProfileUser;

  const factory UserProfileModel.restaurant(
    RestaurantResponseModel restaurant,
  ) = _UserProfileRestaurant;
}