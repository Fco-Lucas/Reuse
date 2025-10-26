import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reuse/features/home/data/models/responses/post_list_response_model.dart';
import 'package:reuse/features/home/presentation/controller/home_action_state.dart';

part 'home_state.freezed.dart';

@freezed
sealed class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.loading() = _Loading;
  const factory HomeState.data({
    required List<PostListResponseModel> posts,
    required bool hasMorePages,
    @Default(HomeActionState.initial()) HomeActionState actionState,
    @Default(false) bool isLoadingMore,
    // Para armazenar um erro que possa ocorrer ao buscar as páginas seguintes,
    // sem perder os posts que já foram carregados.
    String? paginationError,
  }) = _Data;
  const factory HomeState.error(String message) = _Error;
}