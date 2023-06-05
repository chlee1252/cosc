import 'package:cosc/screen/main/components/check_button.dart';
import 'package:flutter/material.dart';

class ResultButtons extends StatelessWidget {
  const ResultButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CheckButton(onTap: () {}),
        CheckButton(onTap: () {}),
        CheckButton(onTap: () {}),
      ],
    );
  }
}
