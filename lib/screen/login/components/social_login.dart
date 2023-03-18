import 'dart:io';

import 'package:cosc/constants.dart';
import 'package:cosc/screen/login/components/social_login_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class SocialLogin extends StatelessWidget {
  const SocialLogin({Key? key}) : super(key: key);

  _call() async {
    String redirectUrl = "cosc://";

    // String uri =
    //     'http://localhost:8080/oauth2/authorize/google?redirect_uri=$redirectUrl';

    String uri =
        'http://localhost:8080/oauth2/authorize/github?redirect_uri=http://localhost:8080/user/me';

    String urlString = "http://localhost:8080/scheme.html";
    // Uri url = Uri.parse(
    //     'http://localhost:8080/oauth2/authorize/github?redirect_uri=$redirectUrl');

    // final response =
    //     await connect.get('http://localhost:8080/oauth2/authorize/google');

    if (await canLaunchUrlString(urlString)) {
      await launchUrlString(urlString);
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
          onPressed: () => _call()),
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

// Navigator.push(
//               context,
//               MaterialPageRoute(
//                   builder: (context) => const LoginWebview(
//                       url: "http://localhost:8080/oauth2/authorize/github")),
//             );
