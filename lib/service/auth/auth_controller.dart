import 'package:cosc/commons/data/data.dart';
import 'package:get/get.dart';
import 'package:uni_links/uni_links.dart';

class AuthController extends GetxController {
  bool isLogin = true;
  var token = RxString("");

  setToken(String newToken) {
    token.value = newToken;
  }

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
      throw Exception("Login 실패!");
    }

    if (uri.scheme == 'cosc') {
      final accessToken = uri.queryParameters[ACCESS_TOKEN_KEY];
      final refreshToken = uri.queryParameters[REFRESH_TOKEN_KEY];

      if (accessToken == null || refreshToken == null) {
        throw Exception("Login 실패"); // TODO: 로그인 실패
      }

      await storage.write(key: ACCESS_TOKEN_KEY, value: accessToken);
      await storage.write(key: REFRESH_TOKEN_KEY, value: refreshToken);
    }
  }
}