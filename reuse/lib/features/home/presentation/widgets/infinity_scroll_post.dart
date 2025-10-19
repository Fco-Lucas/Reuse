import 'package:flutter/material.dart';
import 'package:reuse/core/widgets/empty_state_widget.dart';
import 'package:reuse/features/home/data/models/responses/post_response_model.dart';
import 'package:reuse/features/home/presentation/widgets/post_card.dart';

class InfinityScrollPost extends StatelessWidget {
  final Future<void> Function() onRefresh;
  final void Function(PostResponseModel post) onCardClick;
  final void Function(PostResponseModel post) onLikePressed;
  final ScrollController scrollController;
  final List<PostResponseModel> posts;
  final bool isLoadingMore;

  const InfinityScrollPost({
    super.key,
    required this.onRefresh,
    required this.onCardClick,
    required this.onLikePressed,
    required this.scrollController,
    required this.posts,
    required this.isLoadingMore,
  });

  @override
  Widget build(BuildContext context) {
    if (posts.isEmpty) {
      return const EmptyStateWidget(
        message: 'Nenhuma publicação encontrada.',
        icon: Icons.business_center_sharp,
      );
    } else {
      return RefreshIndicator(
        onRefresh: onRefresh,
        child: ListView.builder(
          controller: scrollController,
          padding: const EdgeInsets.all(8.0),
          itemCount: posts.length + (isLoadingMore ? 1 : 0),
          itemBuilder: (context, index) {
            // Exibe um loader se chegar no fim
            if (index == posts.length) {
              return const Center(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: CircularProgressIndicator(),
                ),
              );
            }

            final post = posts[index];

            return PostCard(
              post: post, 
              onTap: () => onCardClick(post), 
              isLiked: post.liked, 
              onLikePressed: () => onLikePressed(post),
            );
          },
        ),
      );
    }
  }
}
