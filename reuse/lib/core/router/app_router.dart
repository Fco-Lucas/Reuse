import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:reuse/core/providers/navigator_key_provider.dart';
import 'package:reuse/core/widgets/main_scaffold.dart';
import 'package:reuse/features/auth/presentation/providers/auth_provider.dart';
import 'package:reuse/features/auth/presentation/providers/auth_state.dart';
import 'package:reuse/features/auth/presentation/screens/initial_screen.dart';
import 'package:reuse/features/auth/presentation/screens/login_screen.dart';
import 'package:reuse/features/auth/presentation/screens/register_screen.dart';
import 'package:reuse/features/home/presentation/screens/home_screen.dart';
import 'package:reuse/features/profile/presentation/screens/profile_screen.dart';
import 'package:reuse/features/redemptions/presentation/screens/redemptions_screen.dart';
import 'package:reuse/features/splash/splash_screen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_router.g.dart';

@riverpod
GoRouter router(Ref ref) {
  final authState = ref.watch(authProvider);
  final navigatorKey = ref.watch(navigatorKeyProvider);

  const publicRoutes = ['/splash', '/initial', '/login', '/register'];

  return GoRouter(
    navigatorKey: navigatorKey,
    initialLocation: '/initial',
    redirect: (BuildContext context, GoRouterState state) {
      final location = state.matchedLocation;

      return authState.when(
        initial: () => location == '/splash' ? null : '/splash',
        authenticated: () {
          if (publicRoutes.contains(location)) return '/home';
          return null;
        },
        unauthenticated: () {
          if (!publicRoutes.contains(location)) return '/initial';
          return null;
        },
      );
    },
    routes: [
      GoRoute(path: '/splash', builder: (context, state) => const SplashScreen()),
      GoRoute(path: '/initial', builder: (context, state) => const InitialScreen()),
      GoRoute(path: '/login', builder: (context, state) => const LoginScreen()),
      GoRoute(path: '/register', builder: (context, state) => const RegisterScreen()),
      ShellRoute(
        builder: (context, state, child) => MainScaffold(child: child),
        routes: [
          GoRoute(path: '/home', builder: (context, state) => const HomeScreen()),
          GoRoute(path: '/redemptions', builder: (context, state) => const RedemptionsScreen()),
          GoRoute(path: '/profile', builder: (context, state) => const ProfileScreen()),
        ]
      ),
    ]
  );
}