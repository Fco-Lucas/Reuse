import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reuse/features/home/data/enums/home_page_actions.dart';

part 'home_action_state.freezed.dart';

@freezed
sealed class HomeActionState with _$HomeActionState {
  // O estado inicial ou de repouso das ações.
  const factory HomeActionState.initial() = _ActionInitial;
  // O estado de carregamento, que sabe QUAL ação está em andamento.
  const factory HomeActionState.loading(HomePageActions action) = _ActionLoading;
  // O estado de sucesso, que pode carregar uma mensagem.
  const factory HomeActionState.success(String message) = _ActionSuccess;
  // O estado de erro.
  const factory HomeActionState.error(String message) = _ActionError;
}