import 'package:cosc/service/auth/response/token.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'auth_repository.g.dart';

@RestApi(baseUrl: "http://localhost:8080/auth")
abstract class AuthRepository {
  factory AuthRepository(Dio dio, {String baseUrl}) = _AuthRepository;


  @POST("/refresh")
  Future<Token> getAccessToken(@Header("Authorization") String accessToken, @Body() Token token);
}