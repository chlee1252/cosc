import 'package:cosc/commons/data/data.dart';
import 'package:cosc/screen/login/client/auth_repository.dart';
import 'package:cosc/screen/login/client/response/token.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:uni_links/uni_links.dart';

class AuthController extends GetxController {
  var isLogin = RxBool(false);


  @override
  void onInit() {
    super.onInit();

    linkStream.listen((String? link) {
      handleLink(link!);
    }, onError: (error) {
      print("Error!");
    });
  }

  void handleLink(String link) async {
    Uri uri;
    try {
      uri = Uri.parse(link);
    } catch (e) {
      isLogin.value = false;
      throw Exception("Login 실패!");
    }

    if (uri.scheme == 'cosc') {
      final accessToken = uri.queryParameters[ACCESS_TOKEN_KEY];
      final refreshToken = uri.queryParameters[REFRESH_TOKEN_KEY];

      if (accessToken == null || refreshToken == null) {
        isLogin.value = false;
        throw Exception("Login 실패"); // TODO: 로그인 실패
      }

      await storage.write(key: ACCESS_TOKEN_KEY, value: accessToken);
      await storage.write(key: REFRESH_TOKEN_KEY, value: refreshToken);

      isLogin.value = true;
      Get.offAndToNamed("home");
    }
  }

  checkToken() async {
    try {
      final authRepository = AuthRepository(Dio());
      final accessToken = await storage.read(key: ACCESS_TOKEN_KEY);
      final refreshToken = await storage.read(key: REFRESH_TOKEN_KEY);

      final token = Token(accessToken: accessToken, refreshToken: refreshToken);

      final newAccessToken = await authRepository.getAccessToken('Bearer ${token.accessToken}', token);

      await _checkAuth(newAccessToken);
    } catch (e) {
      isLogin.value = false;
    }
  }

  _checkAuth(Token token) async {
    await storage.write(key: ACCESS_TOKEN_KEY, value: token.accessToken);
    await storage.write(key: REFRESH_TOKEN_KEY, value: token.refreshToken);
    isLogin.value = true;
  }

}