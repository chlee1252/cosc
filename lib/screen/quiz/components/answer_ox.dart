import 'package:cosc/screen/quiz/components/select_ox_button.dart';
import 'package:flutter/material.dart';

class AnswerOX extends StatelessWidget {
  const AnswerOX({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ToggleButtons(
      renderBorder: false,
      isSelected: const [false,true],
      children:  const [
        SelectOXButton(isSelected: true,),
        SelectOXButton(isSelected: false,)
      ],
    );
  }
}
