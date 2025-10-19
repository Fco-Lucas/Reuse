import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:reuse/features/home/data/models/responses/post_response_model.dart';

class PostCard extends StatelessWidget {
  final PostResponseModel post;
  final VoidCallback onTap;
  final VoidCallback onLikePressed;
  final bool isLiked; // controla o estado visual do coração

  const PostCard({
    super.key,
    required this.post,
    required this.onTap,
    required this.onLikePressed,
    this.isLiked = false,
  });

  @override
  Widget build(BuildContext context) {
    final int correctAmount = post.amount - post.amountRedemption;
    final String correctOwnerName = post.restaurantName != null ? post.restaurantName! : post.userName != null ? post.userName! : "";

    final validLocal = post.validUntil.toLocal();
    final String formattedDate = DateFormat('dd/MM').format(validLocal);
    final String formattedTime = DateFormat('HH:mm').format(validLocal);
    final String? imageUrl = post.imageUrl?.replaceAll('localhost', '10.0.2.2');

    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Stack(
        children: [
          // Conteúdo principal do card
          InkWell(
            borderRadius: BorderRadius.circular(12),
            onTap: onTap,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: IntrinsicHeight(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: imageUrl != null && imageUrl.isNotEmpty
                          ? Image.network(
                              imageUrl,
                              width: 100,
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) {
                                return Container(
                                  width: 100,
                                  color: Colors.grey.shade300,
                                  child: const Icon(Icons.image_not_supported,
                                      color: Colors.grey),
                                );
                              },
                            )
                          : Container(
                              width: 100,
                              color: Colors.grey.shade300,
                              child: const Icon(Icons.image, color: Colors.grey),
                            ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "$correctAmount ${post.name}",
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            correctOwnerName,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Container(
                            decoration: BoxDecoration(
                              color: Theme.of(context)
                                  .colorScheme
                                  .primaryContainer,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            padding: const EdgeInsets.all(5),
                            child: Text(
                              "Válido até: $formattedDate",
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(height: 5),
                          Container(
                            decoration: BoxDecoration(
                              color: Theme.of(context)
                                  .colorScheme
                                  .primaryContainer,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            padding: const EdgeInsets.all(5),
                            child: Text(
                              "Retirar até: $formattedTime",
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const Spacer(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Ícone de coração flutuante
          Positioned(
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
                  isLiked ? Icons.favorite : Icons.favorite_border,
                  color: isLiked
                      ? Theme.of(context).colorScheme.primary
                      : Colors.grey.shade600,
                  size: 24,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
