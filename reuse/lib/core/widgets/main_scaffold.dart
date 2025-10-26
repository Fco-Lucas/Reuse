import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:reuse/core/enums/auth_user_role.dart';
import 'package:reuse/core/providers/jwt_data_provider.dart';
import 'package:reuse/features/auth/presentation/providers/auth_provider.dart';

class MainScaffold extends ConsumerWidget {
  final Widget child;

  const MainScaffold({super.key, required this.child});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final jwtDataAsync = ref.watch(jwtDataProvider);
    final jwtData = jwtDataAsync.value;

    if (jwtData == null) {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    // Função para calcular o índice selecionado com base na rota atual
    int _calculateSelectedIndex(BuildContext context) {
      final String location = GoRouterState.of(context).matchedLocation;
      final role = jwtData.role;

      if (location.startsWith('/home')) return 0;

      if (role == AuthUserRole.USER) {
        if (location.startsWith('/redemptions')) return 1;
        if (location.startsWith('/profile')) return 2;
      } else if (role == AuthUserRole.RESTAURANT) {
        if (location.startsWith('/profile')) return 1;
      }

      return 0;
    }

    // Função para navegar ao clicar em um item
    void _onItemTapped(int index) {
      final role = jwtData.role;

      switch (index) {
        case 0:
          context.go('/home');
          break;
        case 1:
          if (role == AuthUserRole.USER) {
            context.go('/redemptions');
          } else if (role == AuthUserRole.RESTAURANT) {
            context.go('/profile');
          }
          break;
        case 2:
          if (role == AuthUserRole.USER) {
            context.go('/profile');
          }
          break;
      }
    }

    List<BottomNavigationBarItem> buildNavItems() {
      final role = jwtData.role;
      if (role == AuthUserRole.USER) {
        return const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: 'Início',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            activeIcon: Icon(Icons.shopping_bag),
            label: 'Resgatados',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            activeIcon: Icon(Icons.account_circle),
            label: 'Perfil',
          ),
        ];
      } else if (role == AuthUserRole.RESTAURANT) {
        return const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: 'Início',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            activeIcon: Icon(Icons.account_circle),
            label: 'Perfil',
          ),
        ];
      }
      return [];
    }

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onPrimaryContainer,
      appBar: AppBar(
        title: const Text('REAPROVEITA+', style: TextStyle(fontFamily: "Anton"),),
        actions: [
          IconButton(
            onPressed: () {
              ref.read(authProvider.notifier).logout();
            }, 
            icon: Icon(Icons.logout)
          )
        ],
      ),
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        items: buildNavItems(),
        currentIndex: _calculateSelectedIndex(context),
        onTap: (index) => _onItemTapped(index),
      ),
    );
  }
}