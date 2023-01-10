import 'package:cosc/constants.dart';
import 'package:cosc/screen/main/components/profile.dart';
import 'package:cosc/screen/main/components/question_button.dart';
import 'package:cosc/widget/cosc_appbar.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String userid = "CoScID";
    int total = 120;
    int score = 82;
    int percent = (score / total * 100) ~/ 1;
    return Scaffold(
      appBar: const CoscAppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 23.0,
              vertical: 10.0,
            ),
            child: Row(
              children: [
                Profile(
                  userId: "@$userid",
                  profileUrl: "",
                  onTap: () {
                    print("Click!");
                  },
                ),
                Flexible(
                  fit: FlexFit.loose,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 30.0,
                    ),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "푼 문제수: $total",
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 15.0,
                              ),
                            ),
                            const Spacer(),
                            Text(
                              "맞춘 문제 수: $score",
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 15.0,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        LinearPercentIndicator(
                          padding: EdgeInsets.zero,
                          animation: true,
                          barRadius: const Radius.circular(20.0),
                          lineHeight: 35.0,
                          linearGradient: progressBarGradient,
                          percent: score / total,
                          center: Text(
                            "$percent",
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: secondThemeColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 10.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/image/robot.png",
                      width: 167,
                      height: 167,
                    ),
                    const SizedBox(height: 20.0),
                    FittedBox(
                      child: Text(
                        "안녕하세요, $userid님!",
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 35.0,
                        ),
                      ),
                    ),
                    FittedBox(
                      child: Text(
                        "오늘의 퀴즈가 $userid님을 기다려요.\n도전해볼까요?",
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 40.0,
                        horizontal: 20.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          QuestionButton(onTap: () {}),
                          QuestionButton(onTap: () {}),
                          QuestionButton(onTap: () {}),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
