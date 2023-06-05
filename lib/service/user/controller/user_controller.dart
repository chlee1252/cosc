import 'package:cosc/domain/user/user.dart';
import 'package:cosc/service/quiz/controller/quiz_controller.dart';
import 'package:cosc/service/user/controller/user_service.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  var user = Rxn<User>();

  User get getUser => user.value ?? User();

  fetchUserInformation() async {
    UserService userService = UserService();
    user.value = await userService.getUser();

    if (user.value != null && user.value?.completed == true) {
      final QuizController quizController = Get.find();
      await quizController.fetchDailyQuiz();
    }
  }
}
