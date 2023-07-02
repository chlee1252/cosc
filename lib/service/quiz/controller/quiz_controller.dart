import 'package:cosc/domain/quiz/quiz.dart';
import 'package:cosc/service/quiz/controller/quiz_service.dart';
import 'package:get/get.dart';

class QuizController extends GetxController {
  var quizzes = Rxn<List<Quiz>>();

  List<Quiz> get getQuizzes => quizzes.value ?? List.empty();

  fetchDailyQuiz() async {
    QuizService quizService = QuizService();
    quizzes.value = await quizService.fetchDailyQuiz();
  }
}
