import 'dart:io';

import 'package:cosc/constants.dart';
import 'package:cosc/screen/login/components/social_login_button.dart';
import 'package:cosc/screen/login/constants/login_type.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class SocialLogin extends StatelessWidget {
  const SocialLogin({Key? key}) : super(key: key);

  _call(LoginType loginType) async {
    String uri =
        'http://localhost:8080/oauth2/authorize/${loginType.name}?redirect_uri=cosc://callback';

    if (await canLaunchUrlString(uri)) {
      await launchUrlString(uri, mode: LaunchMode.externalApplication);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.75,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: _createButtons(context),
      ),
    );
  }

  _createButtons(BuildContext context) {
    List<Widget> result = [
      SocialLoginButton(
          image: 'assets/social/Google.png',
          backgroundColor: Colors.white,
          onPressed: () => _call(LoginType.GOOGLE)),
      SocialLoginButton(
          image: 'assets/social/Kakao.png',
          backgroundColor: kakaoColor,
          onPressed: () => _call(LoginType.KAKAO)),
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
