import 'package:cosc/domain/user/user.dart';
import 'package:cosc/service/user/controller/user_service.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  var user = Rxn<User>();

  fetchUserInformation() async {
    UserService userService = UserService();
    user.value = await userService.getUser();
  }
}