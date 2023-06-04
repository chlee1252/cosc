import 'dart:io';

import 'package:cosc/commons/data/data.dart';
import 'package:cosc/service/auth/controller/token_service.dart';
import 'package:cosc/utils/header_utils.dart';
import 'package:dio/dio.dart';

class TokenInterceptor extends Interceptor {
  final Dio _dio;

  TokenInterceptor(this._dio);

  @override
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final accessToken = await storage.read(key: ACCESS_TOKEN_KEY);
    options.headers[HttpHeaders.authorizationHeader] =
        HeaderUtils.createBearerToken(accessToken: accessToken);
    handler.next(options);
  }

  @override
  Future<void> onError(DioError err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == HttpStatus.unauthorized) {
      final result = await TokenService().setNewToken();

      final newAccessToken = await storage.read(key: ACCESS_TOKEN_KEY);
      final options = err.requestOptions;
      options.headers[HttpHeaders.authorizationHeader] =
          HeaderUtils.createBearerToken(accessToken: newAccessToken);

      final newRequestOptions = RequestOptions(
          path: options.path,
          method: options.method,
          data: options.data,
          queryParameters: options.queryParameters,
          headers: options.headers);

      final newResponse = await _dio.fetch(newRequestOptions);

      handler.resolve(newResponse);
    } else {
      handler.next(err);
    }
  }
}
