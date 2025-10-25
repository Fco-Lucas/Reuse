import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reuse/features/home/data/models/responses/post_user_list_response_model.dart';
import 'package:reuse/features/profile/presentation/controllers/user_profile_action_state.dart';

part 'user_profile_state.freezed.dart';

@freezed
sealed class UserProfileState with _$UserProfileState {
  const factory UserProfileState.initial() = _Initial;
  const factory UserProfileState.loading() = _Loading;
  const factory UserProfileState.data({
    required List<PostUserListResponseModel> posts,
    required bool hasMorePages,
    @Default(UserProfileActionState.initial()) UserProfileActionState actionState,
    @Default(false) bool isLoadingMore,
    // Para armazenar um erro que possa ocorrer ao buscar as páginas seguintes,
    // sem perder os posts que já foram carregados.
    String? paginationError,
  }) = _Data;
  const factory UserProfileState.error(String message) = _Error;
}