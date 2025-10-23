import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reuse/features/auth/presentation/providers/auth_provider.dart';
import 'package:reuse/features/home/data/models/responses/post_response_model.dart';
import 'package:reuse/features/home/presentation/controller/redemption_post_controller.dart';
import 'package:reuse/features/home/presentation/controller/redemption_post_state.dart';
import 'package:reuse/features/home/presentation/widgets/redemption_post_card.dart';

class RedemptionPostScreen extends ConsumerStatefulWidget {
  final PostResponseModel post;
  const RedemptionPostScreen({super.key, required this.post});

  @override
  ConsumerState<RedemptionPostScreen> createState() => _RedemptionPostPageState();
}

class _RedemptionPostPageState extends ConsumerState<RedemptionPostScreen> {
  void onRedemption() {
    ref.read(redemptionPostControllerProvider.notifier).redemptionPost(postId: widget.post.id);
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(redemptionPostControllerProvider, (_, next) {
      next.whenOrNull(
        success: (message) => ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(message), backgroundColor: Colors.green)),
        error: (message) => ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(message), backgroundColor: Colors.red)),
      );
    });

    final state = ref.watch(redemptionPostControllerProvider);
    final isLoading = state.maybeWhen(loading: () => true, orElse: () => false);
    
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: RedemptionPostCard(post: widget.post, isLoading: isLoading, onRedemption: onRedemption),
          )
        )
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