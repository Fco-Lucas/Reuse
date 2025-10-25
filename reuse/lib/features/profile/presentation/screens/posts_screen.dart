import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reuse/core/widgets/error_state_widget.dart';
import 'package:reuse/features/auth/presentation/providers/auth_provider.dart';
import 'package:reuse/features/home/data/models/responses/post_user_list_response_model.dart';
import 'package:reuse/features/profile/presentation/screens/restaurant_posts_screen.dart';
import 'package:reuse/features/profile/presentation/screens/user_posts_screen.dart';
import 'package:reuse/features/restaurants/presentation/providers/find_restaurant_by_id.dart';
import 'package:reuse/features/users/presentation/providers/find_user_by_id_provider.dart';

class PostsScreen extends ConsumerStatefulWidget {
  final String userId;
  final PostUserListResponseModel? postClicked;

  const PostsScreen({
    super.key,
    required this.userId,
    required this.postClicked
  });

  @override
  ConsumerState<PostsScreen> createState() => _PostsScreenState();
}

class _PostsScreenState extends ConsumerState<PostsScreen> {
  @override
  Widget build(BuildContext context) {
    final userAsyncValue = ref.watch(findUserByIdProvider(widget.userId));

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onPrimaryContainer,
      appBar: AppBar(
        title: const Text('REAPROVEITA+', style: TextStyle(fontFamily: "Anton"),),
        actions: [
          IconButton(
            onPressed: () {
              ref.read(authProvider.notifier).logout();
            }, 
            icon: Icon(Icons.logout)
          )
        ],
      ),
      body: userAsyncValue.when(
        data: (userModel) {
          if(userModel == null) {
            final restaurantAsyncValue = ref.watch(findRestaurantByIdProvider(widget.userId));
            
            return restaurantAsyncValue.when(
              data: (restaurantModel) {
                if (restaurantModel == null) {
                  return const ErrorStateWidget(message: "Nenhum usuário ou restaurante encontrado com o ID fornecido");
                }

                return RestaurantPostsScreen();
              }, 
              error: (err, stack) => const ErrorStateWidget(message: "Erro ao verificar restaurant"), 
              loading: () => const Center(child: CircularProgressIndicator())
            );
          }

          return UserPostsScreen(userModel: userModel, postClicked: widget.postClicked);
        }, 
        error: (err, stack) => const ErrorStateWidget(message: "Erro ao verificar usuário"), 
        loading: () => const Center(child: CircularProgressIndicator())
      ),
      bottomNavigationBar: Container(
        height: 80,
        decoration: BoxDecoration(
          color: const Color(0xFFF5C6B8),
        ),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Image.asset(
            'assets/images/bottom_navigation_bar_image.png',
          ),
        ),
      ),
    );
  }
}