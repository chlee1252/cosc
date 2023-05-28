import 'package:cosc/service/auth/interceptor/token_interceptor.dart';
import 'package:dio/dio.dart';

class ApiClient {
  static final ApiClient _instance = ApiClient._internal();

  factory ApiClient() => _instance;

  ApiClient._internal() {
    _initializeDio();
  }

  late Dio _dio;

  Dio get dio => _dio;

  void _initializeDio() {
    _dio = Dio();
    _dio.interceptors.add(TokenInterceptor(_dio));
  }
}