import 'package:reuse/features/auth/presentation/controller/register_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'register_controller.g.dart';

@riverpod
class RegisterController extends _$RegisterController {
  @override
  RegisterState build() {
    return const RegisterState.initial();
  }

  Future<void> register(String name, String login, String password) async {
    // 1. Transita para o estado de Loading
    state = const RegisterState.loading();

    try {
      // 2. Simula a chamada de API
      await Future.delayed(const Duration(seconds: 2));

      // throw Exception("Simulando um erro de rede"); // Descomente para testar o erro

      // 3. Em caso de sucesso, transita para o estado Success
      state = const RegisterState.success("Cadastro realizado com sucesso!");

    } catch (e) {
      // 4. Em caso de erro, transita para o estado Error
      state = RegisterState.error(e.toString());
    }
  }
}