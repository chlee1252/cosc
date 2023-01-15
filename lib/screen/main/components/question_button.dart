import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class QuestionButton extends StatelessWidget {
  const QuestionButton({Key? key, required this.onTap}) : super(key: key);

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Lottie.asset(
        "assets/lottie/question_mark.json",
        width: 90.0,
        height: 90.0,
        fit: BoxFit.fill,
        repeat: false,
      ),
    );
  }
}
