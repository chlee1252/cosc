import 'package:cosc/constants.dart';
import 'package:flutter/material.dart';

class AnswerMultiChoice extends StatelessWidget {
  final List<String> multiCHoices;
  const AnswerMultiChoice({Key? key, required this.multiCHoices, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: multiCHoices.length,
        itemBuilder: (BuildContext context, int idx) {
          return MultiChoiceItem(
              choiceAlphabet: String.fromCharCode(65+idx),
              choiceText: multiCHoices[idx]
          );
        });
  }
}

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
    return Container(
      decoration: BoxDecoration(
        color: firstThemeColor,
        borderRadius: BorderRadius.circular(10)
      ),
      padding: const EdgeInsets.all(6),
      margin: EdgeInsets.symmetric(vertical: 5),
      width: double.maxFinite,
      child: Row(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Text(choiceAlphabet, style: const TextStyle(color: Colors.white, fontSize: 30),),
        ),
        Text(choiceText, style: const TextStyle(color: Colors.white, fontSize: 16),),
      ],),
    );
  }
}
