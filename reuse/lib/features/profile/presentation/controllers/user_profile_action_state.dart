import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reuse/features/profile/data/enums/user_profile_page_actions.dart';

part 'user_profile_action_state.freezed.dart';

@freezed
sealed class UserProfileActionState with _$UserProfileActionState {
  // O estado inicial ou de repouso das ações.
  const factory UserProfileActionState.initial() = _ActionInitial;
  // O estado de carregamento, que sabe QUAL ação está em andamento.
  const factory UserProfileActionState.loading(UserProfilePageActions action) = _ActionLoading;
  // O estado de sucesso, que pode carregar uma mensagem.
  const factory UserProfileActionState.success(String message) = _ActionSuccess;
  // O estado de erro.
  const factory UserProfileActionState.error(String message) = _ActionError;
}