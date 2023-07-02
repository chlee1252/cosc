import 'package:cosc/domain/quiz/quiz.dart';
import 'package:cosc/service/quiz/response/quiz_responses.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'quiz_repository.g.dart';

@RestApi(baseUrl: "http://localhost:8080")
abstract class QuizRepository {
  factory QuizRepository(Dio dio, {String baseUrl}) = _QuizRepository;

  @GET("/quiz/daily")
  Future<QuizResponses> getDailyQuizResponses();
}
