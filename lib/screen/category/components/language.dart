import 'package:cosc/components/tag.dart';
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
        padding: const EdgeInsets.only(top: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: isSelected! ? secondThemeColor : firstThemeColor,
        ),
        child: Column(
          children: [
            Image.asset(LanguageType.getByCode(code).asset, width: 110, height: 110,),
            Tag(
              tagBackgroundColor: firstPointColor,
              verticalMargin: 15,
              verticalPadding: 5,
              borderRadius: 10,
              text: LanguageType.getByCode(code).name,
              textColor: Colors.white,
              fontSize: 16,
              width: 100,
            )
          ],
        ),
    );
  }
}
