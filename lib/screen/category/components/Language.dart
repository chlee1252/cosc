import 'package:cosc/screen/main/enum/language_type.dart';
import 'package:flutter/material.dart';

class Language extends StatelessWidget {
  final String code;

  const Language({Key? key,required this.code}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Column(children: [
      Image.asset(LanguageType.getByCode(code).asset),
      Text(LanguageType.getByCode(code).name, style: TextStyle(color: Colors.white)),
    ],);
  }
}
