import 'package:cosc/constants.dart';
import 'package:cosc/screen/main/enum/language_type.dart';
import 'package:flutter/material.dart';

class Language extends StatelessWidget {
  final String code;
  final bool? isSelected;

  const Language({Key? key,required this.code, this.isSelected = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Container(
      padding: const EdgeInsets.only(top: 13),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: isSelected! ? thirdThemeColor : firstThemeColor,
      ),
      child: Column(children: [
        Image.asset(LanguageType.getByCode(code).asset, width: 140, height: 140,),
        Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.symmetric(vertical: 10),
          padding: const EdgeInsets.symmetric(vertical: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color:  firstPointColor,
          ),
          width: 100,
          child: Text(LanguageType.getByCode(code).name, style: const TextStyle(color: Colors.white, fontSize: 16)),
        ),
      ],),
    );
  }
}
