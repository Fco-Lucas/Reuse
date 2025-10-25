import 'package:flutter/material.dart';
import 'package:reuse/features/home/data/models/responses/post_user_list_response_model.dart';
import 'package:reuse/features/profile/presentation/widgets/post_grid_view_image.dart';

class PostGridView extends StatelessWidget {
  final List<PostUserListResponseModel> posts;
  final bool isLoadingMore;
  final Function(PostUserListResponseModel post) onPostClick;

  const PostGridView({super.key, required this.posts, required this.isLoadingMore, required this.onPostClick});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 6.0,
          mainAxisSpacing: 6.0,
        ),
        // Adiciona +1 item para o loader de paginação
        itemCount: posts.length + (isLoadingMore ? 1 : 0),
        itemBuilder: (context, index) {
          
          // Se for o último item e estiver carregando mais, mostre o loader
          if (index == posts.length) {
            return const Center(child: CircularProgressIndicator());
          }

          // Pega o post real
          final post = posts[index];
          
          return PostGridViewImage(post: post, onTap: () => onPostClick(post),);
        },
      );
  }
}