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

  _getProfileAvatar() {
    if (profileUrl.isEmpty) {
      return CircleAvatar(
        radius: 35.0,
        backgroundColor: secondThemeColor,
        child: const Padding(
          padding: EdgeInsets.all(10),
          child: Image(
            image: AssetImage("assets/image/quokka.png"),
            fit: BoxFit.contain,
          ),
        ),
      );
    }

    return CircleAvatar(
      radius: 35.0,
      backgroundColor: Colors.transparent,
      backgroundImage: NetworkImage(profileUrl),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: _getProfileAvatar(),
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
