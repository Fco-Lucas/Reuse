import 'package:reuse/core/errors/api_exception.dart';
import 'package:reuse/core/router/app_router.dart';
import 'package:reuse/features/home/presentation/controller/home_controller.dart';
import 'package:reuse/features/home/presentation/controller/redemption_post_state.dart';
import 'package:reuse/features/redemptions/data/repositorys/post_redemption_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'redemption_post_controller.g.dart';

@riverpod
class RedemptionPostController extends _$RedemptionPostController {
  @override
  RedemptionPostState build() {
    return const RedemptionPostState.initial();
  }

  Future<void> redemptionPost({ required int postId }) async {
    state = const RedemptionPostState.loading();

    try {
      final postRedemptionRepository = ref.read(postRedemptionRepositoryProvider);
      await postRedemptionRepository.redemptionPost(postId: postId);

      ref.invalidate(homeControllerProvider);
      state = const RedemptionPostState.success("Publicação resgatada com sucesso!");
      ref.read(routerProvider).go("/redemptions");

    } on ApiException catch (e) {
      state = RedemptionPostState.error(e.message);
    } catch (e) {
      state = const RedemptionPostState.error('Ocorreu um erro inesperado.');
    }
  }
}