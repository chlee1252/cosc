import 'package:cosc/service/user/request/tag_request.dart';
import 'package:cosc/service/user/response/user_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'user_repository.g.dart';

@RestApi(baseUrl: "http://localhost:8080/user")
abstract class UserRepository {
  factory UserRepository(Dio dio, {String baseUrl}) = _UserRepository;

  @GET("/me")
  Future<UserResponse> getUserInformation();

  @POST("/tag")
  Future<UserResponse> insertUserTag(@Body() TagRequest tagRequest);
}
