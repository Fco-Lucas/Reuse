import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reuse/features/redemptions/data/models/responses/post_users_redemptions_response_model.dart';

part 'redemptions_state.freezed.dart';

@freezed
sealed class RedemptionsState with _$RedemptionsState {
  const factory RedemptionsState.initial() = _Initial;
  const factory RedemptionsState.loading() = _Loading;
  const factory RedemptionsState.data({
    required List<PostUsersRedemptionsResponseModel> posts,
    required bool hasMorePages,
    @Default(false) bool isLoadingMore,
    // Para armazenar um erro que possa ocorrer ao buscar as páginas seguintes,
    // sem perder os posts que já foram carregados.
    String? paginationError,
  }) = _Data;
  const factory RedemptionsState.error(String message) = _Error;
}