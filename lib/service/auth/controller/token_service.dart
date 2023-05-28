import 'package:cosc/commons/data/data.dart';
import 'package:cosc/commons/dio/api_client.dart';
import 'package:cosc/service/auth/repository/auth_repository.dart';
import 'package:cosc/service/auth/response/token.dart';

class TokenService {
  setNewToken() async {
    try {
      final authRepository =
          AuthRepository(ApiClient().dio, baseUrl: "$BASE_URL/auth");
      final accessToken = await storage.read(key: ACCESS_TOKEN_KEY);
      final refreshToken = await storage.read(key: REFRESH_TOKEN_KEY);

      final token = Token(accessToken: accessToken, refreshToken: refreshToken);

      final newAccessToken = await authRepository.getAccessToken(token);

      await storage.write(
          key: ACCESS_TOKEN_KEY, value: newAccessToken.accessToken);
      await storage.write(
          key: REFRESH_TOKEN_KEY, value: newAccessToken.refreshToken);
      return true;
    } catch (e) {
      return false;
    }
  }
}
