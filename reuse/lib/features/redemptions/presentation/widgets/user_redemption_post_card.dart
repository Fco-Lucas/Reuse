import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:reuse/features/redemptions/data/models/responses/post_users_redemptions_response_model.dart';

class UserRedemptionPostCard extends StatelessWidget {
  final PostUsersRedemptionsResponseModel post;

  const UserRedemptionPostCard({
    super.key,
    required this.post
  });

  @override
  Widget build(BuildContext context) {
    final String correctOwnerName = post.restaurantName != null ? post.restaurantName! : post.userName != null ? post.userName! : "";
    final String? imageUrl = post.imageUrl?.replaceAll('localhost', '10.0.2.2');
    final validLocal = post.redemptionAt.toLocal();
    final String formattedRedemptionDate = DateFormat('dd/MM').format(validLocal);

    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
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
                      post.postName,
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
                        "Resgatado dia $formattedRedemptionDate",
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
    );
  }
}