import 'package:reuse/core/errors/api_exception.dart';
import 'package:reuse/core/utils/dialog.dart';
import 'package:reuse/features/home/data/enums/home_page_actions.dart';
import 'package:reuse/features/home/data/models/responses/post_list_response_model.dart';
import 'package:reuse/features/home/data/models/responses/post_response_model.dart';
import 'package:reuse/features/home/data/repositorys/post_like_repository.dart';
import 'package:reuse/features/home/data/repositorys/post_repository.dart';
import 'package:reuse/features/home/presentation/controller/home_action_state.dart';
import 'package:reuse/features/home/presentation/controller/home_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_controller.g.dart';

@riverpod
class HomeController extends _$HomeController {
  // Guarda a página atual para a paginação.
  int _currentPage = 0;

  @override
  HomeState build() {
    return const HomeState.initial();
  }

  // Busca a primeira página de POSTS. Usado para a carga inicial ou ao aplicar novos filtros.
  Future<void> fetchInitialPosts() async {
    state = const HomeState.loading();

    _currentPage = 0;
    try {
      final postRepository = ref.read(postRepositoryProvider);
      final response = await postRepository.getAllPostsPageable(
        page: 0,
        size: 20,
      );
      state = HomeState.data(
        posts: response.content,
        hasMorePages: !response.end,
      );
    } on ApiException catch (e) {
      state = HomeState.error(e.message);
    } catch (e) {
      state = const HomeState.error('Ocorreu um erro inesperado.');
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
          final response = await postRepository.getAllPostsPageable(
            page: _currentPage,
            size: 20,
          );

          // Anexa os novos clientes à lista existente.
          final newPosts = [...currentState.posts, ...response.content];

          state = currentState.copyWith(
            posts: newPosts,
            hasMorePages: !response.end,
            isLoadingMore: false,
          );
        } on ApiException catch (e) {
          state = currentState.copyWith(
            isLoadingMore: false,
            paginationError: e.message,
          );
        } catch (e) {
          state = currentState.copyWith(
            isLoadingMore: false,
            paginationError: 'Ocorreu um erro inesperado ao carregar mais itens.',
          );
        }
      },
      // O 'orElse' é obrigatório e será executado para todos os outros estados
      // (initial, loading, error), nos quais não queremos fazer nada.
      orElse: () {},
    );
  }

  Future<void> likePost(PostListResponseModel post) async {
    await state.maybeMap(
      data: (currentState) async {
        final optimisticallyUpdatedPosts = currentState.posts.map((p) {
          if (p.id == post.id) return p.copyWith(liked: true);
          return p;
        }).toList();

        state = currentState.copyWith(
          posts: optimisticallyUpdatedPosts,
          actionState: HomeActionState.loading(HomePageActions.likePost),
        );

        try {
          final postLikeRepository = ref.read(postLikeRepositoryProvider);
          await postLikeRepository.likePost(postId: post.id);

          state = currentState.copyWith(
            posts: optimisticallyUpdatedPosts, // CRUCIAL: Mantém a lista atualizada
            actionState: const HomeActionState.success('Post curtido!'),
          );

        } catch (e) {
          state = currentState.copyWith(
            posts: currentState.posts,
            actionState: HomeActionState.error(
              e is ApiException ? e.message : 'Ocorreu um erro inesperado.',
            ),
          );
        }
      },
      orElse: () async {},
    );
  }

  Future<void> unLikePost(PostListResponseModel post) async {
    await state.maybeMap(
      data: (currentState) async {
        // Lógica idêntica, mas para descurtir.
        final optimisticallyUpdatedPosts = currentState.posts.map((p) {
          if (p.id == post.id) return p.copyWith(liked: false);
          return p;
        }).toList();

        state = currentState.copyWith(
          posts: optimisticallyUpdatedPosts,
          actionState: HomeActionState.loading(HomePageActions.unLikePost),
        );

        try {
          final postLikeRepository = ref.read(postLikeRepositoryProvider);
          await postLikeRepository.unLikePost(postId: post.id);

          state = currentState.copyWith(
            posts: optimisticallyUpdatedPosts,
            actionState: const HomeActionState.success('Post descurtido!'),
          );
        } catch (e) {
          state = currentState.copyWith(
            posts: currentState.posts,
            actionState: HomeActionState.error(
              e is ApiException ? e.message : 'Ocorreu um erro inesperado.',
            ),
          );
        }
      },
      orElse: () async {},
    );
  }

  Future<PostResponseModel?> onNavigateForRedemptionPostPage(PostListResponseModel post) async {
    return await state.maybeMap(
      data: (currentState) async {
        try {
          DialogUtils.showLoadingDialog(ref, text: 'Buscando informações...');

          final postRepository = ref.read(postRepositoryProvider);
          final response = await postRepository.getPostById(postId: post.id);
          return response;
        } catch (e) {
          state = currentState.copyWith(
            actionState: HomeActionState.error(
              e is ApiException ? e.message : 'Ocorreu um erro inesperado.',
            ),
          );
          return null;
        } finally {
          DialogUtils.hideLoadingDialog(ref);
        }
      },
      orElse: () async {
        return null;
      },
    );
  }
}