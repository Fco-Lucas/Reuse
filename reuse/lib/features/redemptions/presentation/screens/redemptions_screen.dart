import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reuse/core/widgets/access_denied_widget.dart';
import 'package:reuse/core/widgets/error_state_widget.dart';
import 'package:reuse/features/profile/data/models/user_profile_model.dart';
import 'package:reuse/features/profile/presentation/providers/user_profile_provider.dart';
import 'package:reuse/features/redemptions/presentation/controller/redemptions_controller.dart';
import 'package:reuse/features/redemptions/presentation/controller/redemptions_state.dart';
import 'package:reuse/features/redemptions/presentation/widgets/infinity_scroll_user_redemption_post.dart';

class RedemptionsScreen extends ConsumerStatefulWidget {
  const RedemptionsScreen({super.key});

  @override
  ConsumerState<RedemptionsScreen> createState() => _RedemptionsScreenState();
}

class _RedemptionsScreenState extends ConsumerState<RedemptionsScreen> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 200) {
      final userProfile = ref.read(userProfileProvider).value;

      userProfile?.whenOrNull(
        user: (userModel) {
          // Chama o fetchNextPage do provider.family(ID)
          ref.read(redemptionsControllerProvider(userModel.id).notifier).fetchNextPage();
        }
      );
    }
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  Future<void> onRefresh() async {
    final userProfile = ref.read(userProfileProvider).value;

    userProfile?.whenOrNull(
      user: (userModel) {
        // Chama o fetchNextPage do provider.family(ID)
        ref.read(redemptionsControllerProvider(userModel.id).notifier).fetchInitialPosts();
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    final userProfileAsync = ref.watch(userProfileProvider);

    return userProfileAsync.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (err, stack) => const ErrorStateWidget(message: "Erro ao obter usuário autenticado"),
      data: (userProfile) {
        if (userProfile == null) return const ErrorStateWidget(message: 'Erro: Perfil não encontrado.');

        return userProfile.when(
          user: (userModel) {
            final redemptionsState = ref.watch(redemptionsControllerProvider(userModel.id));

            final isInitial = redemptionsState.maybeWhen(
              initial: () => true,
              orElse: () => false,
            );

            if (isInitial) {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                ref.read(redemptionsControllerProvider(userModel.id).notifier).fetchInitialPosts();
              });
            }

            return redemptionsState.when(
              initial: () => const Center(child: CircularProgressIndicator()),
              loading: () => const Center(child: CircularProgressIndicator()),
              data: (posts, hasMorePages, isLoadingMore, paginationError) {
                return SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Seus resgatados",
                          style: TextStyle(
                            fontFamily: "Anton",
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(height: 16),
                        Expanded(
                          child: InfinityScrollUserRedemptionPost(
                            onRefresh: onRefresh, // Sua lógica de refresh está correta
                            scrollController: _scrollController,
                            posts: posts,
                            isLoadingMore: isLoadingMore,
                          ),
                        ),
                      ],
                    ),
                  )
                );
              },
              error: (message) => ErrorStateWidget(message: message, onRetry: () => ref.read(redemptionsControllerProvider(userModel.id).notifier).fetchInitialPosts(),),
            ); 
          }, 
          restaurant: (restaurantModel) {
            return Center(child: AccessDeniedWidget(message: 'Esta página está disponível apenas para usuários.'));
          }
        );
      }
    );
  }
}