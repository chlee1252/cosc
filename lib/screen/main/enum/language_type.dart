enum LanguageType {
  python("Python", "assets/image/python.png"),
  java("Java", "assets/image/python.png"),
  javascript("JavaScript", "assets/image/python.png");

  const LanguageType(this.name, this.asset);

  final String name;
  final String asset;

  factory LanguageType.getByName(String name) {
    return LanguageType.values.firstWhere(
      (element) => element.name == name,
      orElse: () => LanguageType.python,
    );
  }
}
