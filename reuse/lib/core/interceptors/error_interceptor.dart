import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:reuse/core/errors/api_exception.dart';
import 'package:reuse/features/auth/presentation/providers/auth_provider.dart';

class ErrorInterceptor extends Interceptor {
  final Logger _logger;
  final Ref _ref;

  ErrorInterceptor(this._logger, this._ref);

  // O onError é chamado automaticamente pelo Dio quando uma requisição falha
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    // Verifica se o erro é uma resposta da API com status 401 (Não Autorizado)
    if (err.response?.statusCode == 401) {
      _ref.read(authProvider.notifier).logout();
    }

    // Verifica se o erro tem uma resposta da API
    if (err.response != null && err.response!.data != null) {
      final responseData = err.response!.data;
      String apiErrorMessage = 'Ocorreu um erro desconhecido.';

      _logger.e(
        "Erro na requisição para ${err.requestOptions.path}",
        error: responseData,
        stackTrace: err.stackTrace,
      );

      // Verifica se a resposta contém a chave 'message' no JSON recebido
      if (responseData is Map<String, dynamic> && responseData.containsKey('message')) {
        apiErrorMessage = responseData['message'];
      }
      
      // Cria a exceção personalizada com a mensagem da API
      final customException = ApiException(
        requestOptions: err.requestOptions,
        response: err.response,
        message: apiErrorMessage,
        originalError: err,
      );
      
      // Passa a exceção personalizada para frente
      return handler.next(customException);
    }

    _logger.e(
      "Erro de Dio sem resposta do servidor: ${err.message}",
      error: err.error,
      stackTrace: err.stackTrace,
    );
    
    // Se não houver resposta, apenas passa o erro original para frente
    super.onError(err, handler);
  }
}