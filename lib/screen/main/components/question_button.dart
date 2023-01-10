import 'package:cosc/constants.dart';
import 'package:flutter/material.dart';

class QuestionButton extends StatelessWidget {
  const QuestionButton({Key? key, required this.onTap}) : super(key: key);

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CircleAvatar(
        radius: 35.0,
        backgroundColor: redAccentColor,
        child: const Text(
          "?",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 50.0,
          ),
        ),
      ),
    );
  }
}
