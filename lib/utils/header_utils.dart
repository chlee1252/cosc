class HeaderUtils {
  static String createBearerToken({String? accessToken = ""}) {
    return 'Bearer $accessToken';
  }
}