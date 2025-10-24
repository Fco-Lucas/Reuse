import 'package:reuse/core/errors/api_exception.dart';
import 'package:reuse/features/home/data/repositorys/post_repository.dart';
import 'package:reuse/features/redemptions/presentation/controller/redemptions_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'redemptions_controller.g.dart';

@riverpod
class RedemptionsController extends _$RedemptionsController {
  int _currentPage = 0;

  @override
  RedemptionsState build(String userId) {
    return const RedemptionsState.initial();
  }

  // Busca a primeira página de POSTS. Usado para a carga inicial ou ao aplicar novos filtros.
  Future<void> fetchInitialPosts() async {
    state = const RedemptionsState.loading();

    _currentPage = 0;
    try {
      final postRepository = ref.read(postRepositoryProvider);
      final response = await postRepository.getAllRedemptionsByUser(
        page: 0,
        size: 20,
        userId: userId
      );

      state = RedemptionsState.data(
        posts: response.content,
        hasMorePages: !response.end,
      );
    } catch (e) {
      print(e);
      state = RedemptionsState.error(
        e is ApiException ? e.message : 'Ocorreu um erro inesperado.'
      );
    }
  }

  /// Busca a próxima página de posts. Usado para o scroll infinito.
  Future<void> fetchNextPage() async {
    await state.maybeMap(
      data: (currentState) async {
        if (currentState.isLoadingMore || !currentState.hasMorePages) {
          return;
        }

        // Informa a UI que estamos carregando mais itens.
        state = currentState.copyWith(
          isLoadingMore: true,
          paginationError: null,
        );

        try {
          _currentPage++;
          final postRepository = ref.read(postRepositoryProvider);
          final response = await postRepository.getAllRedemptionsByUser(
            page: _currentPage,
            size: 20,
            userId: userId
          );

          // Anexa os novos clientes à lista existente.
          final newPosts = [...currentState.posts, ...response.content];

          state = currentState.copyWith(
            posts: newPosts,
            hasMorePages: !response.end,
            isLoadingMore: false,
          );
        } catch (e) {
          state = RedemptionsState.error(
            e is ApiException ? e.message : 'Ocorreu um erro inesperado.'
          );
        }
      },
      orElse: () {},
    );
  }

}