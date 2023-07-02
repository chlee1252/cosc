import 'package:cosc/commons/data/data.dart';
import 'package:cosc/commons/dio/api_client.dart';
import 'package:cosc/service/quiz/repository/quiz_repository.dart';

class QuizService {
  fetchDailyQuiz() async {
    try {
      final quizRepository = QuizRepository(ApiClient().dio, baseUrl: BASE_URL);
      final quizResponses = await quizRepository.getDailyQuizResponses();
      return quizResponses.quizResponses;
    } catch (e) {
      print(e);
    }
  }
}
