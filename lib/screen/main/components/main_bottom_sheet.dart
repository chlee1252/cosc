import 'dart:core';

import 'package:cosc/domain/user/user.dart';
import 'package:cosc/screen/main/components/result_buttons.dart';
import 'package:cosc/screen/main/components/rounded_text_button.dart';
import 'package:cosc/screen/main/enum/language_type.dart';
import 'package:cosc/service/quiz/controller/quiz_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainBottomSheet extends StatelessWidget {
  const MainBottomSheet({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  String _createMessage() {
    String language = LanguageType.getByCode(user.language).name;
    return user.completed
        ? "오늘의 $language 퀴즈를 모두 푸셨군요.\n어떤 문제를 풀었는지 확인해볼까요?"
        : "오늘의 $language 퀴즈가 ${user.userName}님을 기다려요.\n도전해볼까요?";
  }

  _getStartButton() {
    return RoundedTextButton(
      onPressed: () {
        //TODO: redirect to question card
      },
      text: "퀴즈 시작하기!",
    );
  }

  _getCheckButtons() {
    final quizController = Get.find<QuizController>();
    return ResultButtons(
      quizzes: quizController.getQuizzes,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            GestureDetector(
              onTap: () async {
                Get.toNamed("/category");
              },
              child: Image.asset(
                LanguageType.getByCode(user.language).asset,
                width: 140,
                height: 140,
              ),
            ),
            const SizedBox(height: 50.0),
            FittedBox(
              child: Text(
                "안녕하세요, ${user.userName}님!",
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 32.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: FittedBox(
                child: Text(
                  _createMessage(),
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 20.0,
                horizontal: 20.0,
              ),
              child: user.completed ? _getCheckButtons() : _getStartButton(),
            ),
          ],
        ),
      ),
    );
  }
}
