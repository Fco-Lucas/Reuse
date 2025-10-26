import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reuse/features/home/data/models/responses/post_user_list_response_model.dart';

part 'restaurant_posts_state.freezed.dart';

@freezed
sealed class RestaurantPostsState with _$RestaurantPostsState {
  const factory RestaurantPostsState.initial() = _Initial;
  const factory RestaurantPostsState.loading() = _Loading;
  const factory RestaurantPostsState.data({
    required List<PostUserListResponseModel> posts,
    required bool hasMorePages,
    @Default(false) bool isLoadingMore,
    // Para armazenar um erro que possa ocorrer ao buscar as páginas seguintes,
    // sem perder os posts que já foram carregados.
    String? paginationError,
  }) = _Data;
  const factory RestaurantPostsState.error(String message) = _Error;
}