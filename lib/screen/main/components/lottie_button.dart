import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieButton extends StatelessWidget {
  const LottieButton({
    Key? key,
    required this.onTap,
    required this.lottieAsset,
  }) : super(key: key);

  final VoidCallback onTap;
  final String lottieAsset;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Lottie.asset(
        lottieAsset,
        width: 70.0,
        height: 70.0,
        fit: BoxFit.fill,
        repeat: false,
      ),
    );
  }
}
