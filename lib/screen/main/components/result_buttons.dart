import 'package:cosc/screen/main/components/lottie_button.dart';
import 'package:flutter/material.dart';

class ResultButtons extends StatelessWidget {
  const ResultButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        LottieButton(
          onTap: () {},
          lottieAsset: "assets/lottie/incorrect.json",
        ),
        LottieButton(
          onTap: () {},
          lottieAsset: "assets/lottie/correct.json",
        ),
        LottieButton(
          onTap: () {},
          lottieAsset: "assets/lottie/correct.json",
        ),
      ],
    );
  }
}
