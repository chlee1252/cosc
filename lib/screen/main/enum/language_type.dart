enum LanguageType {
  // TODO: change asset to Java, JavaScript image
  python("py", "Python", "assets/image/python.png"),
  java("java", "Java", "assets/image/python.png"),
  javascript("js", "JavaScript", "assets/image/python.png"),
  typescript("ts", "TypeScript", "assets/image/python.png");

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
