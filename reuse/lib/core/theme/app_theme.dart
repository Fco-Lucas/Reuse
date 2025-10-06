import 'package:flutter/material.dart';

class AppTheme {
  // Impede que a classe seja instanciada
  AppTheme._();

  static ThemeData get lightTheme {
    final colorScheme = ColorScheme.fromSeed(
      seedColor: const Color(0xFF5d2a04),
      brightness: Brightness.light,
    );

    return ThemeData(
      colorScheme: colorScheme,
      // Define fontes e estilos de texto
      textTheme: const TextTheme(
        // displayLarge: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold, fontFamily: "Anton", color: Colors.white),
        // titleLarge: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, fontFamily: 'Arial', color: Colors.white),
        bodyMedium: TextStyle(color: Colors.white),
        bodyLarge: TextStyle(color: Colors.white),
      ),

      // Define widgets da aplicação
      appBarTheme: AppBarTheme(
        backgroundColor: colorScheme.primaryContainer,
        foregroundColor: colorScheme.onPrimaryContainer,
        centerTitle: true,
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Colors.transparent, // ou um tom leve se quiser contraste
        labelStyle: const TextStyle(color: Colors.white70),
        hintStyle: const TextStyle(color: Colors.white54),
        prefixIconColor: Colors.white70,
        suffixIconColor: Colors.white70,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white70),
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(12),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      useMaterial3: true, // Extremamente necessário
    );
  }

  // static ThemeData get darkTheme {
  //   return ThemeData(
  //     // Use o colorScheme para definir a paleta de cores.
  //     // fromSeed é a forma moderna de criar um esquema harmonioso a partir de uma cor principal.
  //     colorScheme: ColorScheme.fromSeed(
  //       seedColor: const Color(0xFF05912a), // Um verde como cor principal
  //       brightness: Brightness.dark,
  //     ),
      
  //     // Defina fontes e estilos de texto aqui, se necessário
  //     textTheme: const TextTheme(
  //       displayLarge: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
  //       titleLarge: TextStyle(fontSize: 24.0, fontStyle: FontStyle.italic),
  //       bodyMedium: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
  //     ),
  //     useMaterial3: true,
  //   );
  // }
}