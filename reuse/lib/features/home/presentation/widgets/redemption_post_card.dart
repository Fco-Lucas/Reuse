import 'package:flutter/material.dart';
import 'package:reuse/core/enums/auth_user_role.dart';
import 'package:reuse/features/home/data/models/responses/post_response_model.dart';

class RedemptionPostCard extends StatelessWidget {
  final PostResponseModel post;
  final bool isLoading;
  final VoidCallback onRedemption;
  final VoidCallback onLikePressed;
  final AuthUserRole authUserRole;

  const RedemptionPostCard({
    super.key, 
    required this.post, 
    required this.isLoading, 
    required this.onRedemption, 
    required this.onLikePressed,
    required this.authUserRole
  });

  @override
  Widget build(BuildContext context) {
    String timeAgo(DateTime date) {
      final Duration diff = DateTime.now().difference(date);

      if (diff.inSeconds < 60) {
        return "agora mesmo";
      } else if (diff.inMinutes < 60) {
        return "há ${diff.inMinutes} min";
      } else if (diff.inHours < 24) {
        return "há ${diff.inHours}h";
      } else if (diff.inDays < 7) {
        return "há ${diff.inDays}d";
      } else if (diff.inDays < 30) {
        return "há ${diff.inDays ~/ 7} sem";
      } else if (diff.inDays < 365) {
        return "há ${diff.inDays ~/ 30} mês";
      } else {
        return "há ${diff.inDays ~/ 365} ano";
      }
    }

    final String correctOwnerName = post.restaurantName != null ? post.restaurantName! : post.userName != null ? post.userName! : "";
    final String? imageUrl = post.imageUrl?.replaceAll('localhost', '10.0.2.2');

    return Card(
      color: Colors.white,
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  correctOwnerName,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  post.name,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                Row(
                  children: [
                    const Icon(Icons.alarm, color: Colors.grey, size: 18,),
                    const SizedBox(width: 5,),
                    Text(
                      "Postado ${timeAgo(post.createdAt)}",
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Icon(Icons.location_on, color: Colors.grey, size: 18,), // Gostaria apenas da gota da localização
                    const SizedBox(width: 5,),
                    Text(
                      post.address,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                      ),
                    ), // Calcular a diferença entre post.validUntil e a data atual
                  ],
                ),
                const SizedBox(height: 20,),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: imageUrl != null && imageUrl.isNotEmpty
                      ? Image.network(
                          imageUrl,
                          width: double.infinity,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return Container(
                            width: double.infinity,
                              color: Colors.grey.shade300,
                              child: const Icon(Icons.image_not_supported,
                                  color: Colors.grey),
                            );
                          },
                        )
                      : Container(
                          width: double.infinity,
                          color: Colors.grey.shade300,
                          child: const Icon(Icons.image, color: Colors.grey),
                        ),
                ),
                const SizedBox(height: 10,),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Theme.of(context).colorScheme.primaryContainer,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(8), // cantos arredondados (opcional)
                  ),
                  child: Card(
                    color: Colors.white,
                    elevation: 0, // sem sombra
                    margin: EdgeInsets.zero, // remove espaçamento padrão do Card
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        post.description,
                        style: const TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                authUserRole == AuthUserRole.USER ? ElevatedButton(
                  onPressed: onRedemption,
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    foregroundColor: Theme.of(context).colorScheme.onPrimaryContainer,
                  ),
                  child: isLoading
                      ? const SizedBox(
                          height: 20,
                          width: 20,
                          child: CircularProgressIndicator(strokeWidth: 2),
                        )
                      : const Text('Resgatar', style: TextStyle(fontSize: 16)),
                ) : Container()
              ],
            ),
          ),
          authUserRole == AuthUserRole.USER ? Positioned(
            top: 8,
            right: 8,
            child: InkWell(
              borderRadius: BorderRadius.circular(30),
              onTap: onLikePressed,
              child: Container(
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.9),
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.15),
                      blurRadius: 4,
                      offset: const Offset(1, 2),
                    ),
                  ],
                ),
                child: Icon(
                  post.liked ? Icons.favorite : Icons.favorite_border,
                  color: post.liked
                      ? Theme.of(context).colorScheme.primary
                      : Colors.grey.shade600,
                  size: 24,
                ),
              ),
            ),
          ) : Container()
        ],
      )
    );
  }
}