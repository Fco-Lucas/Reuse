import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reuse/core/widgets/error_state_widget.dart';
import 'package:reuse/features/profile/data/models/user_profile_model.dart';
import 'package:reuse/features/profile/presentation/providers/user_profile_provider.dart';
import 'package:reuse/features/profile/presentation/screens/restaurant_profile_screen.dart';
import 'package:reuse/features/profile/presentation/screens/user_profile_screen.dart';

class ProfileScreen extends ConsumerStatefulWidget {
  const ProfileScreen({super.key});

  @override
  ConsumerState<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends ConsumerState<ProfileScreen> {
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
            return UserProfileScreen(userModel: userModel);
          }, 
          restaurant: (restaurantModel) {
            return RestaurantProfileScreen(restaurantModel: restaurantModel,);
          }
        );
      }
    );
  }
}