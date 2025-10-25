import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reuse/core/widgets/error_state_widget.dart';
import 'package:reuse/features/home/data/models/responses/post_user_list_response_model.dart';
import 'package:reuse/features/profile/presentation/controllers/user_posts_controller.dart';
import 'package:reuse/features/profile/presentation/controllers/user_posts_state.dart';
import 'package:reuse/features/profile/presentation/widgets/infinity_scroll_user_posts.dart';
import 'package:reuse/features/users/data/models/responses/user_response_model.dart';

class UserPostsScreen extends ConsumerStatefulWidget {
  final UserResponseModel userModel;
  final PostUserListResponseModel? postClicked;

  const UserPostsScreen({
    super.key,
    required this.userModel,
    required this.postClicked
  });

  @override
  ConsumerState<UserPostsScreen> createState() => _UserPostsScreenState();
}

class _UserPostsScreenState extends ConsumerState<UserPostsScreen> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 200) {
      ref.read(userPostsControllerProvider(widget.userModel.id).notifier).fetchNextPage();
    }
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  Future<void> onRefresh() async {
    await ref.read(userPostsControllerProvider(widget.userModel.id).notifier).fetchInitialPosts();
  }

  @override
  Widget build(BuildContext context) {
    final userPostsState = ref.watch(userPostsControllerProvider(widget.userModel.id));
    final isInitial = userPostsState.maybeWhen(
      initial: () => true,
      orElse: () => false,
    );

    if (isInitial) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        ref.read(userPostsControllerProvider(widget.userModel.id).notifier).fetchInitialPosts();
      });
    }

    return userPostsState.when(
      initial: () => const Center(child: CircularProgressIndicator()),
      loading: () => const Center(child: CircularProgressIndicator()),
      data: (posts, hasMorePages, isLoadingMore, paginationError) {
        return InfinityScrollUserPosts(
          onRefresh: onRefresh,
          scrollController: _scrollController,
          posts: posts,
          isLoadingMore: isLoadingMore
        );
      },
      error: (message) => ErrorStateWidget(message: message, onRetry: () => ref.read(userPostsControllerProvider(widget.userModel.id).notifier).fetchInitialPosts(),),
    );
  }
}