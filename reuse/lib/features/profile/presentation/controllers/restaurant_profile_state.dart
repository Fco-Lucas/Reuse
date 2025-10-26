import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reuse/features/home/data/models/responses/post_user_list_response_model.dart';
import 'package:reuse/features/profile/presentation/controllers/restaurant_profile_action_state.dart';

part 'restaurant_profile_state.freezed.dart';

@freezed
sealed class RestaurantProfileState with _$RestaurantProfileState {
  const factory RestaurantProfileState.initial() = _Initial;
  const factory RestaurantProfileState.loading() = _Loading;
  const factory RestaurantProfileState.data({
    required List<PostUserListResponseModel> posts,
    required bool hasMorePages,
    @Default(RestaurantProfileActionState.initial()) RestaurantProfileActionState actionState,
    @Default(false) bool isLoadingMore,
    // Para armazenar um erro que possa ocorrer ao buscar as páginas seguintes,
    // sem perder os posts que já foram carregados.
    String? paginationError,
  }) = _Data;
  const factory RestaurantProfileState.error(String message) = _Error;
}