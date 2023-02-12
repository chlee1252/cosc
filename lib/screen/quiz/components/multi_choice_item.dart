import 'package:cosc/constants/constants.dart';
import 'package:cosc/constants/select.dart';
import 'package:flutter/material.dart';

class MultiChoiceItem extends StatelessWidget {
  final bool isSelected;
  final String choiceAlphabet;
  final String choiceText;

  const MultiChoiceItem({
    Key? key,
    this.isSelected = false,
    required this.choiceAlphabet,
    required this.choiceText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color backGroundColor = isSelected ? selectedBackgroundColor : nonSelectedBackgroundColor;
    Color textColor = isSelected ? selectedTextColor : nonSelectedTextColor;

    return Container(
      decoration: BoxDecoration(
          color: backGroundColor,
          borderRadius: BorderRadius.circular(10)
      ),
      padding: const EdgeInsets.all(6),
      margin: EdgeInsets.symmetric(vertical: 5),
      width: double.maxFinite,
      child: Row(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Text(
            choiceAlphabet,
            style: TextStyle(color: textColor, fontSize: 30),
          ),
        ),
        Text(choiceText, style: TextStyle(color: textColor, fontSize: 16),),
      ],),
    );
  }
}
