import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_provider.g.dart';

@riverpod
class ThemeProvider extends _$ThemeProvider {
  // Estado inicial é o tema do sistema.
  @override
  ThemeMode build() {
    return ThemeMode.light;
  }

  // Método para alterar o tema.
  void setThemeMode(ThemeMode mode) {
    state = mode;
  }
}