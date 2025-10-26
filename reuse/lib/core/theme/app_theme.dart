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
        // Cor do ícone e do label quando o campo está focado
        focusColor: Colors.white,
        // Estilo do label (Name, Email, etc.)
        labelStyle: const TextStyle(color: Colors.white70, fontSize: 16),
        // Cor dos ícones
        prefixIconColor: Colors.white70,
        // Remove o preenchimento de fundo
        filled: false, 
        // Borda quando o campo está habilitado (não focado)
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white54, width: 1.0),
        ),
        // Borda quando o campo está focado (sendo editado)
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 1.5),
        ),
        // Borda em caso de erro
        errorBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.red.shade400, width: 1.5),
        ),
        // Borda focada em caso de erro
        focusedErrorBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.red.shade400, width: 2.0),
        ),
      ),
      textSelectionTheme: const TextSelectionThemeData(
        // Esta é a propriedade que você procura
        cursorColor: Colors.white, 
        
        // Dica: Você também pode mudar a cor do texto selecionado aqui
        selectionColor: Colors.white24, 
        
        // E a cor das alças de seleção
        selectionHandleColor: Colors.white,
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