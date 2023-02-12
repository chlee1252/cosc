import 'package:cosc/screen/quiz/components/multi_choice_item.dart';
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
              choiceText: multiCHoices[idx],
              isSelected: idx % 2 == 1, /// 현재는 하드코딩 방식
          );
        });
  }
}