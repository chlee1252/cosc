import 'package:cosc/screen/quiz/components/question.dart';
import 'package:cosc/widget/cosc_appbar.dart';
import 'package:flutter/material.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CoscAppBar(),
        body: Center(
        child: Question(),
      )
    );
  }

}
