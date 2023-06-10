import 'package:cosc/constants.dart';
import 'package:cosc/domain/user/user.dart';
import 'package:cosc/screen/main/components/profile.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({Key? key, required this.user}) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    String userid = user.userName;
    int solved = user.solved;
    int correct = user.correct;
    double correctRatio = solved > 0 ? correct / solved : 0;
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 23.0,
        vertical: 10.0,
      ),
      child: Row(
        children: [
          Profile(
            userId: "@$userid",
            profileUrl: user.profileUrl,
            onTap: () {
              // TODO: choose from the gallery
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
                        "푼 문제수: $solved",
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        "맞춘 문제 수: $correct",
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
                    lineHeight: 32.0,
                    linearGradient: progressBarGradient,
                    percent: correctRatio,
                    backgroundColor: thirdThemeColor,
                    center: Text(
                      "${correctRatio * 100 ~/ 1}",
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
