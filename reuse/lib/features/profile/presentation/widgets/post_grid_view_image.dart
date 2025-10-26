import 'package:flutter/material.dart';
import 'package:reuse/features/home/data/models/responses/post_user_list_response_model.dart';

class PostGridViewImage extends StatelessWidget {
  final PostUserListResponseModel post; 
  final VoidCallback onTap;

  const PostGridViewImage({super.key, required this.post, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final imageUrl = post.imageUrl;

    return AspectRatio(
      aspectRatio: 1 / 1,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Stack(
          fit: StackFit.expand, // Faz o Stack preencher o ClipRRect
          children: [
            (imageUrl != null && imageUrl.isNotEmpty) 
              ? Image.network(
                imageUrl, 
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    color: Colors.grey.shade300,
                    child: const Icon(Icons.image_not_supported_outlined, color: Colors.grey),
                  );
                },
              ) : Container(
                color: Colors.grey.shade300,
                child: const Icon(Icons.image_not_supported_outlined, color: Colors.grey),
              ),

            Material(
              color: Colors.transparent, 
              child: InkWell(
                onTap: onTap, // 4. CHAME O CALLBACK AQUI
              ),
            ),
          ],
        ),
      ),
    );
  }
}