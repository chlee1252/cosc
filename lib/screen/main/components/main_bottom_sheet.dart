import 'dart:core';

import 'package:cosc/domain/user/user.dart';
import 'package:cosc/screen/main/components/check_button.dart';
import 'package:cosc/screen/main/components/question_button.dart';
import 'package:cosc/screen/main/enum/language_type.dart';
import 'package:cosc/service/user/controller/user_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainBottomSheet extends StatelessWidget {
  const MainBottomSheet({
    Key? key,
    this.completed = false, required this.user,
  }) : super(key: key);

  final bool completed;
  final User user;

  String _createMessage() {
    String language = LanguageType.getByCode(user.language).name;
    return completed
        ? "오늘의 $language 퀴즈를 모두 푸셨군요.\n어떤 문제를 풀었는지 확인해볼까요?"
        : "오늘의 $language 퀴즈가 ${user.userName}님을 기다려요.\n도전해볼까요?";
  }

  //TODO: redirect to question card
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
