import 'dart:io';

import 'package:cosc/constants.dart';
import 'package:cosc/screen/login/components/social_login_button.dart';
import 'package:flutter/material.dart';

class SocialLogin extends StatelessWidget {
  const SocialLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.75,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: _createButtons(),
        // children: _createButtons(),
      ),
    );
  }

  _createButtons() {
    List<Widget> result = [
      SocialLoginButton(
          image: 'assets/social/Google.png',
          backgroundColor: Colors.white,
          onPressed: () => print("google")),
      SocialLoginButton(
          image: 'assets/social/Kakao.png',
          backgroundColor: kakaoColor,
          onPressed: () => print("kakao")),
    ];

    if (Platform.isIOS) {
      SocialLoginButton appleLogin = SocialLoginButton(
          image: 'assets/social/Apple.png',
          backgroundColor: Colors.white,
          onPressed: () => print("apple"));
      result.add(appleLogin);
    }

    return result;
  }
}
