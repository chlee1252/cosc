import 'package:cosc/screen/quiz/components/answer_multi_choice.dart';
import 'package:cosc/screen/quiz/components/answer_ox.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String type;
  final List<String>? choices;
  Answer({
    Key? key,
    required this.type,
    this.choices,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            width: double.maxFinite,
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: const Text("ANSWER", style: TextStyle(color: Colors.white, fontSize: 20))),
        /**
         * Onclick Event 추가 필요
         * */
        BuildAnswer(type: type, choices: choices)
      ],
    );
  }

  Widget BuildAnswer({required String type, List<String>? choices}) {

    if(type == "OX") {
      return const AnswerOX();
    }
    if(type == "MULTI") {
      if(choices == null) {
        throw Exception("객관식 문항 리스트 데이터가 없습니다");
      }
      return AnswerMultiChoice(multiCHoices: choices);
    }
    throw Exception("올바른 Type 만 사용해 주세요!");
  }
}