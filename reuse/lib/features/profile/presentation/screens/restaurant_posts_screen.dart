import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reuse/core/widgets/error_state_widget.dart';
import 'package:reuse/features/home/data/models/responses/post_user_list_response_model.dart';
import 'package:reuse/features/profile/presentation/controllers/restaurant_posts_controller.dart';
import 'package:reuse/features/profile/presentation/controllers/restaurant_posts_state.dart';
import 'package:reuse/features/profile/presentation/widgets/infinity_scroll_user_posts.dart';
import 'package:reuse/features/restaurants/data/models/responses/restaurant_response_model.dart';

class RestaurantPostsScreen extends ConsumerStatefulWidget {
  final RestaurantResponseModel restaurantModel;
  final PostUserListResponseModel? postClicked;

  const RestaurantPostsScreen({
    super.key,
    required this.restaurantModel,
    required this.postClicked
  });

  @override
  ConsumerState<RestaurantPostsScreen> createState() => _RestaurantPostsScreenState();
}

class _RestaurantPostsScreenState extends ConsumerState<RestaurantPostsScreen> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 200) {
      ref.read(restaurantPostsControllerProvider(widget.restaurantModel.id).notifier).fetchNextPage();
    }
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  Future<void> onRefresh() async {
    await ref.read(restaurantPostsControllerProvider(widget.restaurantModel.id).notifier).fetchInitialPosts();
  }

  @override
  Widget build(BuildContext context) {
    final userPostsState = ref.watch(restaurantPostsControllerProvider(widget.restaurantModel.id));
    final isInitial = userPostsState.maybeWhen(
      initial: () => true,
      orElse: () => false,
    );

    if (isInitial) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        ref.read(restaurantPostsControllerProvider(widget.restaurantModel.id).notifier).fetchInitialPosts();
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
      error: (message) => ErrorStateWidget(message: message, onRetry: () => ref.read(restaurantPostsControllerProvider(widget.restaurantModel.id).notifier).fetchInitialPosts(),),
    );
  }
}