import 'dart:async';

import 'package:cosc/constants/constants.dart';
import 'package:cosc/service/auth/AuthController.dart';
import 'package:cosc/widget/logo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  // 여기서 라우팅 해줌
  final AuthController _authController = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (timestamp) => {
        Timer(
          // TODO : Timer가 아닌 자동로그인 로직 이후에 실행되도록 변경
          const Duration(seconds: 1),
          () => {
            !_authController.isLogin
                ? Get.toNamed('home')
                : Get.toNamed('login')
          },
        )
      },
    );

    return const Scaffold(
      body: Center(
        child: Logo(
          size: mainLogoSize,
          color: Colors.white,
        ),
      ),
    );
  }
}
