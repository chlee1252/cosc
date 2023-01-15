import 'package:cosc/constants.dart';
import 'package:cosc/screen/main/components/main_bottom_sheet.dart';
import 'package:cosc/screen/main/components/profile.dart';
import 'package:cosc/widget/cosc_appbar.dart';
import 'package:cosc/widget/expanded_rounded_card.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String userid = "CoScID";
    String language = "Python";
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
          ExpandedRoundedCard(
            child: MainBottomSheet(
              language: "Python",
              userid: userid,
              completed: false,
            ),
          ),
        ],
      ),
    );
  }
}
