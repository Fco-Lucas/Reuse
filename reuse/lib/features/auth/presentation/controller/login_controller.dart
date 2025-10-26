import 'package:reuse/core/errors/api_exception.dart';
import 'package:reuse/core/providers/logger_provider.dart';
import 'package:reuse/features/auth/data/models/requests/login_request_model.dart';
import 'package:reuse/features/auth/data/repositorys/auth_repository.dart';
import 'package:reuse/features/auth/presentation/controller/login_state.dart';
import 'package:reuse/features/auth/presentation/providers/auth_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'login_controller.g.dart';

@riverpod
class LoginController extends _$LoginController {
  @override
  LoginState build() {
    return const LoginState.initial();
  }

  Future<void> login(String login, String password) async {
    state = const LoginState.loading();

    final authRepository = ref.read(authRepositoryProvider);
    final log = ref.read(loggerProvider);

    try {
      final onlyNumbers = login.replaceAll(RegExp(r'[^0-9]'), '');

      LoginRequestModel credentials = LoginRequestModel(login: onlyNumbers, password: password);
      await authRepository.login(credentials);
      ref.invalidate(authProvider);
      state = const LoginState.success(null);
    } on ApiException catch (e) {
      state = LoginState.error(e.message);
    } catch (e) {
      log.e("Erro", error: e);
      state = const LoginState.error('Oops, algo inesperado aconteceu.');
    }
  }
}
