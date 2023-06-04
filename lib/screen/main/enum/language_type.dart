enum LanguageType {
  python("python", "Python", "assets/image/python.png"),
  java("java", "Java", "assets/image/java.png"),
  javascript("javascript", "JavaScript", "assets/image/javascript.png"),
  typescript("typescript", "TypeScript", "assets/image/typescript.png");

  const LanguageType(this.code, this.name, this.asset);

  final String code;
  final String name;
  final String asset;

  factory LanguageType.getByCode(String code) {
    return LanguageType.values.firstWhere(
      (element) => element.code == code,
      orElse: () => LanguageType.python,
    );
  }
}
