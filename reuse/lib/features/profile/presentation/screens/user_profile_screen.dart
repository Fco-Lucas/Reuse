import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:reuse/core/utils/formaters.dart';
import 'package:reuse/core/widgets/error_state_widget.dart';
import 'package:reuse/features/home/data/models/requests/create_post_request_model.dart';
import 'package:reuse/features/home/data/models/responses/post_user_list_response_model.dart';
import 'package:reuse/features/profile/presentation/controllers/user_profile_action_state.dart';
import 'package:reuse/features/profile/presentation/controllers/user_profile_controller.dart';
import 'package:reuse/features/profile/presentation/controllers/user_profile_state.dart';
import 'package:reuse/features/profile/presentation/widgets/create_post_bottom_sheet.dart';
import 'package:reuse/features/profile/presentation/widgets/post_grid_view.dart';
import 'package:reuse/features/profile/presentation/widgets/update_user_bottom_sheet.dart';
import 'package:reuse/features/users/data/models/requests/user_update_request_model.dart';
import 'package:reuse/features/users/data/models/responses/user_response_model.dart';

class UserProfileScreen extends ConsumerStatefulWidget {
  final UserResponseModel userModel;

  const UserProfileScreen({super.key, required this.userModel});

  @override
  ConsumerState<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends ConsumerState<UserProfileScreen> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 200) {
      // Lê o estado atual sem 'rebuildar'
      final state = ref.read(userProfileControllerProvider(widget.userModel.id));
      
      // Usa o 'maybeMap' para checar se estamos no estado 'data'
      // e se podemos carregar mais
      state.maybeMap(
        data: (dataState) {
          if (dataState.hasMorePages && !dataState.isLoadingMore) {
            ref.read(userProfileControllerProvider(widget.userModel.id).notifier).fetchNextPage();
          }
        },
        orElse: () {},
      );
    }
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  void _onCreatePost(CreatePostRequestModel data, File? imageFile) {
    ref.read(userProfileControllerProvider(widget.userModel.id).notifier).createPost(
      data: data,
      imageFile: imageFile, // Passe o arquivo
    );
  }
  void _showCreatePostSheet() {
    showModalBottomSheet(
      backgroundColor: Theme.of(context).colorScheme.onPrimaryContainer,
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (_) => CreatePostBottomSheet(onCreatePost: _onCreatePost)
    );
  }

  void _onUpdateUser(UserUpdateRequestModel data) {
    ref.read(userProfileControllerProvider(widget.userModel.id).notifier).updateUser(userId: widget.userModel.id, data: data);
  }

  void _showUpdateUserSheet() {
    showModalBottomSheet(
      backgroundColor: Theme.of(context).colorScheme.onPrimaryContainer,
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (_) => UpdateUserBottomSheet(currentUserInfo: widget.userModel, onUpdateUser: _onUpdateUser)
    );
  }

  void _onPostClick(PostUserListResponseModel postClicked) {
    context.push(
      "/user-posts",
      extra: {
        'userId': widget.userModel.id,
        'postClicked': postClicked,
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<UserProfileState>(userProfileControllerProvider(widget.userModel.id), (previous, next) {
      // --- LÓGICA PARA OS EFEITOS DE AÇÃO (Criar novo post, atualizar perfil, etc.) ---
      final actionState = next.maybeMap(data: (d) => d.actionState, orElse: () => null);
      if (actionState == null) return;

      actionState.whenOrNull(
        success: (message) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message), backgroundColor: Colors.green));
          ref.read(userProfileControllerProvider(widget.userModel.id).notifier).resetActionState();
        },
        error: (message) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message), backgroundColor: Colors.red));
          ref.read(userProfileControllerProvider(widget.userModel.id).notifier).resetActionState();
        },
      );
    });

    final UserResponseModel userModel = widget.userModel;
    final textTheme = Theme.of(context).textTheme;

    final userProfileState = ref.watch(userProfileControllerProvider(widget.userModel.id));
    final isInitial = userProfileState.maybeWhen(
      initial: () => true,
      orElse: () => false,
    );

    if (isInitial) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        ref.read(userProfileControllerProvider(widget.userModel.id).notifier).fetchInitialPosts();
      });
    }

    return SafeArea(
      child: SingleChildScrollView(
        controller: _scrollController,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1, 
                  child: AspectRatio(
                    aspectRatio: 1 / 1,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Icons.person_outline, size: 40, color: Colors.grey.shade700),
                    ),
                  ),
                ),
                const SizedBox(width: 16), 
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        userModel.name,
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        formatCpfCnpj(userModel.cpf),
                        style: textTheme.bodyMedium,
                      )
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: _showUpdateUserSheet,
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Theme.of(context).colorScheme.onPrimaryContainer,
                      minimumSize: const Size(0, 50),
                      textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    ),
                    child: const Text("Editar perfil"),
                  ),
                ),
                const SizedBox(width: 16,),
                Expanded(
                  child: ElevatedButton(
                    onPressed: _showCreatePostSheet,
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Theme.of(context).colorScheme.onPrimaryContainer,
                      minimumSize: const Size(0, 50),
                      textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    ),
                    child: const Text("Publicar"),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10,),
            const Divider(thickness: 5,),
            const SizedBox(height: 10,),

            userProfileState.when(
              initial: () => const Padding(
                padding: EdgeInsets.all(32.0),
                child: Center(child: CircularProgressIndicator()),
              ),
              loading: () => const Padding(
                padding: EdgeInsets.all(32.0),
                child: Center(child: CircularProgressIndicator()),
              ),
              error: (message) => ErrorStateWidget(
                message: message,
                onRetry: () => ref.read(userProfileControllerProvider(widget.userModel.id).notifier).fetchInitialPosts(),
              ),
              data: (posts, hasMorePages, actionState, isLoadingMore, paginationError) {
                
                // Se não houver posts, mostre uma mensagem
                if (posts.isEmpty) {
                  return const Center(child: Text('Nenhuma publicação encontrada.'));
                }

                // O GridView.builder que você já tinha, agora com dados reais
                return PostGridView(posts: posts, isLoadingMore: isLoadingMore, onPostClick: (post) => _onPostClick(post),);
              },
            )
          ],
        ),
      ),
    );
  }
}