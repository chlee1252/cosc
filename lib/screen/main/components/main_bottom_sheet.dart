import 'dart:core';

import 'package:cosc/screen/main/components/check_button.dart';
import 'package:cosc/screen/main/components/question_button.dart';
import 'package:cosc/screen/main/enum/language_type.dart';
import 'package:flutter/material.dart';

class MainBottomSheet extends StatelessWidget {
  const MainBottomSheet({
    Key? key,
    required this.userid,
    required this.languageCode,
    this.completed = false,
  }) : super(key: key);

  final String userid;
  final String languageCode;
  final bool completed;

  String _createMessage() {
    String language = LanguageType.getByCode(languageCode).name;
    return completed
        ? "오늘의 $language 퀴즈를 모두 푸셨군요.\n어떤 문제를 풀었는지 확인해볼까요?"
        : "오늘의 $language 퀴즈가 $userid님을 기다려요.\n도전해볼까요?";
  }

  List<QuestionButton> _getQuestionButton() {
    return [
      QuestionButton(onTap: () {}),
      QuestionButton(onTap: () {}),
      QuestionButton(onTap: () {}),
    ];
  }

  List<CheckButton> _getCheckButtons() {
    return [
      CheckButton(onTap: () {}),
      CheckButton(onTap: () {}),
      CheckButton(onTap: () {}),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                print("logo");
              },
              child: Image.asset(
                LanguageType.getByCode(languageCode).asset,
                width: 140,
                height: 140,
              ),
            ),
            const SizedBox(height: 50.0),
            FittedBox(
              child: Text(
                "안녕하세요, $userid님!",
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: completed ? _getCheckButtons() : _getQuestionButton(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
