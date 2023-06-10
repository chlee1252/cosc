import 'package:cosc/commons/data/data.dart';
import 'package:cosc/commons/dio/api_client.dart';
import 'package:cosc/domain/user/user.dart';
import 'package:cosc/service/user/repository/user_repository.dart';

class UserService {
  getUser() async {
    try {
      final userRepository =
          UserRepository(ApiClient().dio, baseUrl: "$BASE_URL/user");

      final userResponse = await userRepository.getUserInformation();

      return User(
        userName: userResponse.uid ?? "",
        profileUrl: userResponse.profile ?? "",
        correct: userResponse.correct ?? 0,
        solved: userResponse.solved ?? 0,
        language: userResponse.tagName ?? "py",
        completed: userResponse.dailyQuizStarted ?? false,
      );
    } catch (e) {
      print(e);
      // TODO: User 패치 실패
    }
  }
}
