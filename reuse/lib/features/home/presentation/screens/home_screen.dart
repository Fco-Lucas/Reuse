import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:reuse/core/providers/jwt_data_provider.dart';
import 'package:reuse/core/widgets/error_state_widget.dart';
import 'package:reuse/features/home/data/models/responses/post_list_response_model.dart';
import 'package:reuse/features/home/presentation/controller/home_action_state.dart';
import 'package:reuse/features/home/presentation/controller/home_controller.dart';
import 'package:reuse/features/home/presentation/controller/home_state.dart';
import 'package:reuse/features/home/presentation/widgets/infinity_scroll_post.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 200) {
      ref.read(homeControllerProvider.notifier).fetchNextPage();
    }
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  Future<void> onRefresh() async {
    await ref.read(homeControllerProvider.notifier).fetchInitialPosts();
  }

  Future<void> onCardClick(PostListResponseModel post) async {
    final postToSend = await ref.read(homeControllerProvider.notifier).onNavigateForRedemptionPostPage(post);
    if(!mounted || postToSend == null) return;
    context.push('/redemption-post', extra: postToSend);
  }

  void onLikePressed(PostListResponseModel post) {
    // Se já estiver curtido, descurte
    if (post.liked) {
      ref.read(homeControllerProvider.notifier).unLikePost(post);
      return;
    }

    // Se n está curtido, curte
    ref.read(homeControllerProvider.notifier).likePost(post);
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<HomeState>(homeControllerProvider, (previous, next) {
      final actionState = next.whenOrNull(data: (_, __, action, ___, ____) => action);
      if (actionState == null) return;

      actionState.whenOrNull(
        // success: (message) => ScaffoldMessenger.of(context)
        //     .showSnackBar(SnackBar(content: Text(message), backgroundColor: Colors.green)),
        error: (message) => ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(message), backgroundColor: Colors.red)),
      );
    });

    final homeState = ref.watch(homeControllerProvider);
    final isInitial = homeState.maybeWhen(
      initial: () => true,
      orElse: () => false,
    );

    if (isInitial) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        ref.read(homeControllerProvider.notifier).fetchInitialPosts();
      });
    }

    final jwtAsyncValue = ref.read(jwtDataProvider);

    return jwtAsyncValue.when(
      loading: () => const Center(child: CircularProgressIndicator(),),
      error: (err, stack) => ErrorStateWidget(message: "Informações do usuário autenticado não encontrado"),
      data: (jwtData) {
        final authUserRole = jwtData?.role;
        if (authUserRole == null) return ErrorStateWidget(message: "Cargo do usuário autenticado não encontrado");

        return homeState.when(
          initial: () => const Center(child: CircularProgressIndicator()),
          loading: () => const Center(child: CircularProgressIndicator()),
          data: (posts, hasMorePages, actionState, isLoadingMore, paginationError) {
            return InfinityScrollPost(
              onRefresh: onRefresh,
              onLikePressed: (post) => onLikePressed(post),
              onCardClick: (post) => onCardClick(post),
              scrollController: _scrollController,
              posts: posts,
              isLoadingMore: isLoadingMore,
              authUserRole: authUserRole,
            );
          },
          error: (message) => ErrorStateWidget(message: message, onRetry: () => ref.read(homeControllerProvider.notifier).fetchInitialPosts(),),
        );
      }, 
    );
  }
}