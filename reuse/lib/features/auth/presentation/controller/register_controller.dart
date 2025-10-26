import 'package:reuse/core/errors/api_exception.dart';
import 'package:reuse/core/providers/logger_provider.dart';
import 'package:reuse/features/auth/presentation/controller/register_state.dart';
import 'package:reuse/features/restaurants/data/models/requests/restaurant_create_request_model.dart';
import 'package:reuse/features/restaurants/data/repositorys/restaurant_repository.dart';
import 'package:reuse/features/users/data/models/requests/user_create_request_model.dart';
import 'package:reuse/features/users/data/repositorys/user_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'register_controller.g.dart';

@riverpod
class RegisterController extends _$RegisterController {
  @override
  RegisterState build() {
    return const RegisterState.initial();
  }

  Future<void> _createUser({ required UserCreateRequestModel data }) async {
    final userRepository = ref.read(userRepositoryProvider);
    await userRepository.createUser(data: data);
  }

  Future<void> _createRestaurant({ required RestaurantCreateRequestModel data }) async {
    final restaurantRepository = ref.read(restaurantRepositoryProvider);
    await restaurantRepository.createRestaurant(data: data);
  }

  Future<void> register(String name, String login, String password) async {
    state = const RegisterState.loading();
    final log = ref.read(loggerProvider);

    try {
      final onlyNumbers = login.replaceAll(RegExp(r'[^0-9]'), '');

      if (onlyNumbers.length <= 11) {
        // CPF
        final data = UserCreateRequestModel(name: name, cpf: onlyNumbers, password: password);
        await _createUser(data: data);
      } else {
        // CNPJ
        final data = RestaurantCreateRequestModel(name: name, cnpj: onlyNumbers, password: password);
        await _createRestaurant(data: data);
      }

      state = const RegisterState.success("Cadastro realizado com sucesso!");

    } on ApiException catch (e, st) {
      log.e("Erro da API ao cadastrar: ${e.message}", error: e, stackTrace: st);
      state = RegisterState.error(e.message); 
    } catch (e, st) {
      log.e("Erro inesperado ao cadastrar", error: e, stackTrace: st);
      state = const RegisterState.error("Ocorreu um erro inesperado. Tente novamente.");
    }
  }
}