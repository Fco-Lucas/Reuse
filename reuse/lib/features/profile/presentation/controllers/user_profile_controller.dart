import 'dart:io';

import 'package:reuse/core/errors/api_exception.dart';
import 'package:reuse/core/utils/dialog.dart';
import 'package:reuse/features/home/data/models/requests/create_post_request_model.dart';
import 'package:reuse/features/home/data/models/responses/post_response_model.dart';
import 'package:reuse/features/home/data/models/responses/post_user_list_response_model.dart';
import 'package:reuse/features/home/data/repositorys/post_repository.dart';
import 'package:reuse/features/profile/data/enums/user_profile_page_actions.dart';
import 'package:reuse/features/profile/presentation/controllers/user_profile_action_state.dart';
import 'package:reuse/features/profile/presentation/controllers/user_profile_state.dart';
import 'package:reuse/features/profile/presentation/providers/user_profile_provider.dart';
import 'package:reuse/features/users/data/models/requests/user_update_request_model.dart';
import 'package:reuse/features/users/data/repositorys/user_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_profile_controller.g.dart';

@riverpod
class UserProfileController extends _$UserProfileController {
  // Guarda a página atual para a paginação.
  int _currentPage = 0;

  @override
  UserProfileState build(String userId) {
    return const UserProfileState.initial();
  }

  // Busca a primeira página de POSTS. Usado para a carga inicial ou ao aplicar novos filtros.
  Future<void> fetchInitialPosts() async {
    state = const UserProfileState.loading();

    _currentPage = 0;
    try {
      final postRepository = ref.read(postRepositoryProvider);
      final response = await postRepository.getAllByUserId(
        page: 0,
        size: 20,
        userId: userId
      );

      state = UserProfileState.data(
        posts: response.content,
        hasMorePages: !response.end,
      );
    } catch (e) {
      print(e);
      state = UserProfileState.error(
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
          final response = await postRepository.getAllByUserId(
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
          print(e);
          state = UserProfileState.error(
            e is ApiException ? e.message : 'Ocorreu um erro inesperado.'
          );
        }
      },
      // O 'orElse' é obrigatório e será executado para todos os outros estados
      // (initial, loading, error), nos quais não queremos fazer nada.
      orElse: () {},
    );
  }

  Future<void> createPost({ required CreatePostRequestModel data, File? imageFile }) async {
    final currentState = state.maybeMap(data: (d) => d, orElse: () => null);
    if (currentState == null) return; // Não faz nada se não estiver no estado 'data'

    state = currentState.copyWith(actionState: const UserProfileActionState.loading(UserProfilePageActions.POST));
    DialogUtils.showLoadingDialog(ref, text: "Criando publicação...");

    try {
      final postRepository = ref.read(postRepositoryProvider);
      
      final PostResponseModel createdPost = await postRepository.createPost(
        data: data,
        imageFile: imageFile,
      );
      
      final PostUserListResponseModel newPost = PostUserListResponseModel(
        id: createdPost.id, 
        userId: createdPost.userId, 
        userName: createdPost.userName, 
        restaurantId: createdPost.restaurantId, 
        restaurantName: createdPost.restaurantName, 
        name: createdPost.name, 
        createdAt: createdPost.createdAt, 
        address: createdPost.address, 
        description: createdPost.description, 
        imageUrl: createdPost.imageUrl
      );
      final updatedPosts = [newPost, ...currentState.posts];

      state = currentState.copyWith(
        posts: updatedPosts,
        actionState: const UserProfileActionState.success('Publicação criada com sucesso!'),
      );
    } catch (e) {
      state = currentState.copyWith(actionState: UserProfileActionState.error(e is ApiException ? e.message : 'Ocorreu um erro inesperado.'));
    } finally {
      DialogUtils.hideLoadingDialog(ref);
    }
  }

  Future<void> updateUser({ required String userId, required UserUpdateRequestModel data }) async {
    final currentState = state.maybeMap(data: (d) => d, orElse: () => null);
    if (currentState == null) return; // Não faz nada se não estiver no estado 'data'

    state = currentState.copyWith(actionState: const UserProfileActionState.loading(UserProfilePageActions.UPDATE_PROFILE));
    DialogUtils.showLoadingDialog(ref, text: "Atualizando informações...");

    try {
      final userRepository = ref.read(userRepositoryProvider);
      
      await userRepository.updateUser(
        userId: userId,
        data: data,
      );
      
      // Invalida o provider na qual detém as informações do usuário autenticado
      ref.invalidate(userProfileProvider);

      state = currentState.copyWith(actionState: const UserProfileActionState.success('Informações atualizadas com sucesso!'));
    } catch (e) {
      state = currentState.copyWith(actionState: UserProfileActionState.error(e is ApiException ? e.message : 'Ocorreu um erro inesperado.'));
    } finally {
      DialogUtils.hideLoadingDialog(ref);
    }
  }

  void resetActionState() {
    state.maybeMap(
      data: (currentState) {
        state = currentState.copyWith(actionState: const UserProfileActionState.initial());
      },
      orElse: () {},
    );
  }
}
