import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'logger_provider.g.dart';

@riverpod
Logger logger(Ref ref) {
  return Logger(
    printer: PrettyPrinter(
      methodCount: 1, // Número de chamadas de método para exibir
      errorMethodCount: 5, // Para exibir um stacktrace maior em erros
      lineLength: 80, // Largura da linha
      colors: true, // Saída colorida
      printEmojis: true, // Imprimir emoji para cada tipo de log
    ),
    level: kReleaseMode ? Level.warning : Level.debug,
  );
}