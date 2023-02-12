import 'package:cosc/screen/quiz/components/answer_multi_choice.dart';
import 'package:cosc/screen/quiz/components/answer_ox.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  Answer({
    Key? key,
  }) : super(key: key);

  /// quiz_screen 에서 부터 prop drill 해야 할까??
  final List<String> choices = [
    "가독성이 아주 뛰어남",
    "함수 안의 함수",
    "콜백 천국이라는 단어와 관련 있음",
    "전화를 해 달라는 함수"
  ];

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
        // 문제 타입에 따라 다른 컴포넌트 주입 (컴포넌트 명도 변경 필요)
        // BuildAnswer(type: "OX")
        BuildAnswer(type: "MULTI", choices: choices)
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