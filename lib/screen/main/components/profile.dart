import 'package:cosc/constants.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({
    Key? key,
    required this.userId,
    required this.profileUrl,
    this.textColor,
    required this.onTap,
  }) : super(key: key);

  final String userId;
  final Color? textColor;
  final String profileUrl;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: CircleAvatar(
            radius: 35.0,
            backgroundColor: secondPointColor,
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Text(
          userId,
          style: TextStyle(
            color: textColor ?? Colors.white,
          ),
        ),
      ],
    );
  }
}
