import 'package:flutter/material.dart';
import 'package:reuse/core/widgets/empty_state_widget.dart';
import 'package:reuse/features/home/data/models/responses/post_user_list_response_model.dart';
import 'package:reuse/features/profile/presentation/widgets/post_user_card.dart';

class InfinityScrollUserPosts extends StatelessWidget {
  final Future<void> Function() onRefresh;
  final ScrollController scrollController;
  final List<PostUserListResponseModel> posts;
  final bool isLoadingMore;

  const InfinityScrollUserPosts({
    super.key,
    required this.onRefresh,
    required this.scrollController,
    required this.posts,
    required this.isLoadingMore
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

            return PostUserCard(
              post: post, 
            );
          },
        ),
      );
    }
  }
}