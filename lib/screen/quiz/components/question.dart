import 'dart:core';

import 'package:cosc/constants/constants.dart';
import 'package:cosc/screen/quiz/components/answer.dart';
import 'package:cosc/screen/quiz/components/question_content.dart';
import 'package:cosc/screen/quiz/components/tag_list.dart';
import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String title;
  final List<String> taglist;
  final String type;
  final List<String>? choices;

  const Question({
    Key? key,
    required this.title,
    required this.taglist,
    required this.type,
    this.choices
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.99,
      height: MediaQuery.of(context).size.height * 0.8,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: secondThemeColor),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 40),
              child: Text(title ,style: TextStyle(color: Colors.white, fontSize: 24),),
            ),
            Column(
              children:  [
                const QuestionContent(),
                TagList(tagNameList: taglist,),
                Answer(type: type, choices: choices),
              ],
            )
          ],
        ),
      )
    );
  }
}
