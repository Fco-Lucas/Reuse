import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:reuse/features/auth/presentation/controller/login_controller.dart';
import 'package:reuse/features/auth/presentation/controller/login_state.dart';
import 'package:reuse/features/auth/presentation/widgets/login_form.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    void onLoginAttempt(String login, String password) {
      ref.read(loginControllerProvider.notifier).login(login, password);
    }

    ref.listen<LoginState>(loginControllerProvider, (_, state) {
      state.whenOrNull(
        success: (data) => null,
        error: (message) => ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message), backgroundColor: Colors.red),),
      );
    });

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onPrimaryContainer,
      appBar: AppBar(
        leading: (IconButton(onPressed: () => context.go("/initial"), icon: Icon(Icons.arrow_back),)),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                const Text(
                  "Doe e faça a diferença!",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 28),
                LoginForm(onLogin: onLoginAttempt, isLoading: false),
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