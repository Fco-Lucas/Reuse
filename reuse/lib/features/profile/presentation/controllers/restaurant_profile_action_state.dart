import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reuse/features/profile/data/enums/restaurant_profile_page_actions.dart';

part 'restaurant_profile_action_state.freezed.dart';

@freezed
sealed class RestaurantProfileActionState with _$RestaurantProfileActionState {
  // O estado inicial ou de repouso das ações.
  const factory RestaurantProfileActionState.initial() = _ActionInitial;
  // O estado de carregamento, que sabe QUAL ação está em andamento.
  const factory RestaurantProfileActionState.loading(RestaurantProfilePageActions action) = _ActionLoading;
  // O estado de sucesso, que pode carregar uma mensagem.
  const factory RestaurantProfileActionState.success(String message) = _ActionSuccess;
  // O estado de erro.
  const factory RestaurantProfileActionState.error(String message) = _ActionError;
}