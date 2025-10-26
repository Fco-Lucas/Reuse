import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reuse/core/providers/jwt_data_provider.dart';
import 'package:reuse/core/widgets/error_state_widget.dart';
import 'package:reuse/features/auth/presentation/providers/auth_provider.dart';
import 'package:reuse/features/home/data/models/responses/post_response_model.dart';
import 'package:reuse/features/home/presentation/controller/home_controller.dart';
import 'package:reuse/features/home/presentation/controller/home_state.dart';
import 'package:reuse/features/home/presentation/controller/redemption_post_controller.dart';
import 'package:reuse/features/home/presentation/controller/redemption_post_state.dart';
import 'package:reuse/features/home/presentation/widgets/redemption_post_card.dart';

class RedemptionPostScreen extends ConsumerStatefulWidget {
  final PostResponseModel post;
  const RedemptionPostScreen({super.key, required this.post});

  @override
  ConsumerState<RedemptionPostScreen> createState() => _RedemptionPostPageState();
}

class _RedemptionPostPageState extends ConsumerState<RedemptionPostScreen> {
  void onRedemption() {
    ref.read(redemptionPostControllerProvider.notifier).redemptionPost(postId: widget.post.id);
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(redemptionPostControllerProvider, (_, next) {
      next.whenOrNull(
        success: (message) => ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(message), backgroundColor: Colors.green)),
        error: (message) => ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(message), backgroundColor: Colors.red)),
      );
    });

    // Assiste ao homeController para pegar o status de 'liked' ao vivo
    final homeState = ref.watch(homeControllerProvider);

    // Encontra a versão mais recente do post na lista
    final PostResponseModel livePost = homeState.maybeWhen(
      data: (posts, _, __, ___, ____) {
        final postFromList = posts.firstWhereOrNull(
          (p) => p.id == widget.post.id,
        );

        if (postFromList != null) {
          return widget.post.copyWith(liked: postFromList.liked);
        }

        // Se não encontrou (postFromList é null), usa o post original
        return widget.post;
      },
      orElse: () => widget.post, // Fallback se o estado não for 'data'
    );

    void onLikePressed() {
      // 4. USE O MAPPER para converter o tipo!
      final postForController = livePost.toPostListResponseModel();

      if (postForController.liked) {
        ref.read(homeControllerProvider.notifier).unLikePost(postForController);
      } else {
        ref.read(homeControllerProvider.notifier).likePost(postForController);
      }
    }

    final jwtAsyncValue = ref.read(jwtDataProvider);

    final state = ref.watch(redemptionPostControllerProvider);
    final isLoading = state.maybeWhen(loading: () => true, orElse: () => false);

    return jwtAsyncValue.when(
      loading: () => const Center(child: CircularProgressIndicator(),),
      error: (err, stack) => ErrorStateWidget(message: "Informações do usuário autenticado não encontrado"),
      data: (jwtData) {
        final authUserRole = jwtData?.role;
        if (authUserRole == null) return ErrorStateWidget(message: "Cargo do usuário autenticado não encontrado");

        return Scaffold(
          backgroundColor: Theme.of(context).colorScheme.onPrimaryContainer,
          appBar: AppBar(
            title: const Text('REAPROVEITA+', style: TextStyle(fontFamily: "Anton"),),
            actions: [
              IconButton(
                onPressed: () {
                  ref.read(authProvider.notifier).logout();
                }, 
                icon: Icon(Icons.logout)
              )
            ],
          ),
          body: SafeArea(
            child: SingleChildScrollView(
              child: Center(
                child: RedemptionPostCard(post: livePost, isLoading: isLoading, onRedemption: onRedemption, onLikePressed: onLikePressed, authUserRole:  authUserRole,),
              )
            )
          ),
          bottomNavigationBar: Container(
            height: 80,
            decoration: BoxDecoration(
              color: const Color(0xFFF5C6B8),
            ),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Image.asset(
                'assets/images/bottom_navigation_bar_image.png',
              ),
            ),
          ),
        );
      }
    );
  }
}