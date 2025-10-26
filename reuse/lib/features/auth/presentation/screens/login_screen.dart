import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
        error: (message) => ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(message),
            backgroundColor: Colors.red,
          ),
        ),
      );
    });

    final state = ref.watch(loginControllerProvider);
    final isLoading = state.maybeMap(loading: (_) => true, orElse: () => false);

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onPrimaryContainer,
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              const Text(
                "Doe e faça a diferença!",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              const Text(
                "Realize login abaixo",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 28),
              LoginForm(onLogin: onLoginAttempt, isLoading: isLoading),
              const SizedBox(height: 50), // um pequeno respiro visual
            ],
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
        top: false, // garante que o teclado não empurre
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Image.asset(
            'assets/images/bottom_navigation_bar_image.png',
            height: 100,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
