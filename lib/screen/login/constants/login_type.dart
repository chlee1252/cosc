enum LoginType {
  GOOGLE, KAKAO
}

const Map<LoginType, String> loginTypeNames = {
  LoginType.GOOGLE: "google",
  LoginType.KAKAO: "kakao",
};

extension LoginTypeExtension on LoginType {
  String get name {
    switch(this) {
      case LoginType.GOOGLE:
        return "google";
      case LoginType.KAKAO:
        return "kakao";
      default:
        return "";
    }
  }
}