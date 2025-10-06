import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:reuse/core/providers/navigator_key_provider.dart';
import 'package:reuse/features/auth/presentation/screens/initial_screen.dart';
import 'package:reuse/features/auth/presentation/screens/login_screen.dart';
import 'package:reuse/features/auth/presentation/screens/register_screen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_router.g.dart';

@riverpod
GoRouter router(Ref ref) {
  final navigatorKey = ref.watch(navigatorKeyProvider);

  return GoRouter(
    navigatorKey: navigatorKey,
    initialLocation: '/initial',
    redirect: (BuildContext context, GoRouterState state) {
      // Vou adicionar uma lógica futura aqui
    },
    routes: [
      GoRoute(path: '/initial', builder: (context, state) => const InitialScreen()),
      GoRoute(path: '/login', builder: (context, state) => const LoginScreen()),
      GoRoute(path: '/register', builder: (context, state) => const RegisterScreen()),
    ]
  );
}