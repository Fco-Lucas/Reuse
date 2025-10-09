import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:reuse/features/auth/presentation/controller/register_controller.dart';
import 'package:reuse/features/auth/presentation/controller/register_state.dart';
import 'package:reuse/features/auth/presentation/widgets/register_form.dart';

class RegisterScreen extends ConsumerWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Ouve as MUDANÇAS de estado para ações pontuais como mostrar SnackBars.
    ref.listen<RegisterState>(
      registerControllerProvider, 
      (previous, next) {
        next.whenOrNull(
          success: (message) => {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(message), backgroundColor: Colors.green),
            ),
            context.go("/login"),
          },
          error: (message) => ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(message), backgroundColor: Colors.red),
          ),
        );
      },
    );

    void onRegisterAttempt(String name, String login, String password) {
      ref.read(registerControllerProvider.notifier).register(name, login, password);
    }

    final state = ref.watch(registerControllerProvider);
    final isLoading = state.maybeMap(loading: (_) => true, orElse: () => false);

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onPrimaryContainer,
      appBar: AppBar(),
      body: Stack(
        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                const Text(
                  "Seja um Reaproveita+",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 28),
                RegisterForm(
                  onRegister: onRegisterAttempt,
                  isLoading: isLoading,
                ),
                const SizedBox(height: 150), // Espaço para a imagem do rodapé
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 50),
              child: Image.asset(
                'assets/images/bottom_navigation_bar_image.png',
                height: 100,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      ),
    );
  }
}