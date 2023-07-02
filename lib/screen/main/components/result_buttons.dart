import 'package:cosc/domain/quiz/quiz.dart';
import 'package:cosc/screen/main/components/lottie_button.dart';
import 'package:flutter/material.dart';

class ResultButtons extends StatelessWidget {
  const ResultButtons({Key? key, required this.quizzes}) : super(key: key);

  final List<Quiz> quizzes;
  final correctAsset = "assets/lottie/correct.json";
  final incorrectAsset = "assets/lottie/incorrect.json";

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: List.generate(
        quizzes.length,
        (index) => LottieButton(
          onTap: () {},
          lottieAsset: quizzes[index].correct ? correctAsset : incorrectAsset,
        ),
      ),
    );
  }
}
