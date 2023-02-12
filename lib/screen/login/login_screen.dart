import 'package:cosc/constants/constants.dart';
import 'package:cosc/screen/login/components/social_login.dart';
import 'package:cosc/widget/logo.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Center(
              child: Logo(
                size: mainLogoSize,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            SocialLogin(),
          ],
        ),
      ),
    );
  }
}
