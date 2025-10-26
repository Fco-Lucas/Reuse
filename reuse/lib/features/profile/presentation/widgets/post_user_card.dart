import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:reuse/features/home/data/models/responses/post_user_list_response_model.dart'; // Assuming this has all necessary fields like description, address, etc.

class PostUserCard extends StatelessWidget {
  final PostUserListResponseModel post;

  const PostUserCard({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    final validLocal = post.createdAt.toLocal(); // Assuming you have createdAt
    final String formattedDate = DateFormat('dd/MM/yyyy').format(validLocal);
    final imageUrl = post.imageUrl;
    final String ownerName = post.restaurantName ?? post.userName ?? "Desconhecido";

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      elevation: 3,
      clipBehavior: Clip.antiAlias,
      child: Container(
        color: const Color(0xFF4B2E24),
        child: IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 2,
                child: (imageUrl != null && imageUrl.isNotEmpty)
                    ? Image.network(
                        imageUrl,
                        fit: BoxFit.cover,
                        // Add loading/error builders for better UX
                        loadingBuilder: (context, child, progress) {
                          if (progress == null) return child;
                          return Container(color: Colors.grey.shade800, child: const Center(child: CircularProgressIndicator(color: Colors.white)));
                        },
                        errorBuilder: (context, error, stackTrace) {
                           return Container(
                            color: Colors.grey.shade800,
                            child: const Center(child: Icon(Icons.image_not_supported_outlined, color: Colors.grey, size: 50)),
                          );
                        },
                      )
                    : Container( // Placeholder if no image
                        color: Colors.grey.shade800,
                        child: const Center(child: Icon(Icons.image_not_supported_outlined, color: Colors.grey, size: 50)),
                      ),
              ),

              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(12.0), // Padding inside the details column
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center, // Center items horizontally
                    children: [
                      // Logo Placeholder (Circular)
                      AspectRatio(
                        aspectRatio: 1 / 1,
                        child: Container(
                          margin: const EdgeInsets.only(bottom: 8), // Space below logo
                          decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(Icons.person_outline, size: 40, color: Colors.grey.shade700),
                        ),
                      ),
                      
                      Text(
                        ownerName,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4.0),
                        child: Text(
                          post.address,
                          style: TextStyle(color: Colors.grey.shade400, fontSize: 12),
                          textAlign: TextAlign.center,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),

                      const Divider(color: Colors.white54, height: 16), // Separator

                      Text(
                        "Data da publicação:",
                        style: TextStyle(color: Colors.grey.shade400, fontSize: 11),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        formattedDate,
                        style: TextStyle(color: Colors.grey.shade400, fontSize: 11),
                        textAlign: TextAlign.center,
                      ),

                      const SizedBox(height: 10),

                      Expanded(
                        child: SingleChildScrollView(
                          child: Text(
                            post.description,
                            style: const TextStyle(color: Colors.white, fontSize: 12),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

extension PostModelHelper on PostUserListResponseModel {
  String? get address {
    // Try to access address, return null if it doesn't exist
    try {
      // ignore: avoid_dynamic_calls
      return (this as dynamic).address as String?;
    } catch (_) {
      return null; // Field doesn't exist or is not a String
    }
  }

  String? get description {
      try {
      // ignore: avoid_dynamic_calls
      return (this as dynamic).description as String?;
    } catch (_) {
      return null; 
    }
  }

  DateTime get createdAt {
      try {
      // ignore: avoid_dynamic_calls
      return (this as dynamic).createdAt as DateTime;
    } catch (_) {
      return DateTime.now(); // Default fallback
    }
  }
}