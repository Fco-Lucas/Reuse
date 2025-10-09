import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reuse/core/router/app_router.dart';
import 'package:reuse/core/theme/app_theme.dart';
import 'package:reuse/core/theme/theme_provider.dart';

Future<void> main() async {
  await dotenv.load(fileName: ".env.dev");
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    final theme = ref.watch(themeProviderProvider);

    return MaterialApp.router(
      routerConfig: router,
      title: "Reuse",
      theme: AppTheme.lightTheme,
      themeMode: theme,
    );
  }
}