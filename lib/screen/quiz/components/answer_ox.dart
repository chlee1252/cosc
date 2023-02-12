import 'package:cosc/screen/quiz/components/select_ox_button.dart';
import 'package:flutter/material.dart';

class AnswerOX extends StatelessWidget {
  const AnswerOX({
    Key? key,
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
        ToggleButtons(
          renderBorder: false,
          isSelected: const [false,true],
          children:  const [
            SelectOXButton(isSelected: true,),
            SelectOXButton(isSelected: false,)
          ],
        )
      ],
    );
  }
}