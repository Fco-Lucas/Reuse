import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:reuse/core/errors/api_exception.dart';

class ErrorInterceptor extends Interceptor {
  final Logger _logger;
  final Future<void> Function()? onUnauthorized;

  ErrorInterceptor(this._logger, {this.onUnauthorized});

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    _logger.i(err);
    // Trata erro 401
    if (err.response?.statusCode == 401) {
      if (onUnauthorized != null) {
        await onUnauthorized!();
      }
    }

    // Trata erros de API
    if (err.response != null && err.response!.data != null) {
      final responseData = err.response!.data;
      String apiErrorMessage = 'Ocorreu um erro desconhecido.';

      _logger.e(
        "Erro na requisição para ${err.requestOptions.path}",
        error: responseData,
        stackTrace: err.stackTrace,
      );

      if (responseData is Map<String, dynamic> && responseData.containsKey('message')) {
        apiErrorMessage = responseData['message'];
      }

      final customException = ApiException(
        requestOptions: err.requestOptions,
        response: err.response,
        message: apiErrorMessage,
        originalError: err,
      );

      return handler.reject(customException);
    }

    // Loga erro genérico
    _logger.e(
      "Erro de Dio sem resposta do servidor: ${err.message}",
      error: err.error,
      stackTrace: err.stackTrace,
    );

    super.onError(err, handler);
  }
}
