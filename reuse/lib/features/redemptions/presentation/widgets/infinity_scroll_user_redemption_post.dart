import 'package:flutter/material.dart';
import 'package:reuse/core/widgets/empty_state_widget.dart';
import 'package:reuse/features/redemptions/data/models/responses/post_users_redemptions_response_model.dart';
import 'package:reuse/features/redemptions/presentation/widgets/user_redemption_post_card.dart';

class InfinityScrollUserRedemptionPost extends StatelessWidget {
  final Future<void> Function() onRefresh;
  final ScrollController scrollController;
  final List<PostUsersRedemptionsResponseModel> posts;
  final bool isLoadingMore;

  const InfinityScrollUserRedemptionPost({
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
        message: 'Nenhuma publicação resgatada encontrada.',
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

            return UserRedemptionPostCard(
              post: post, 
            );
          },
        ), 
      );
    }
  }
}