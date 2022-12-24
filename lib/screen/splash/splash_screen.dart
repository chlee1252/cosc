import 'dart:async';

import 'package:cosc/service/auth/AuthController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';

class SplashScreen extends StatelessWidget {

  SplashScreen({Key? key}) : super(key: key);
  // 여기서 라우팅 해줌
  final AuthController _authController = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {

    WidgetsBinding.instance.addPostFrameCallback((timestamp) => {
      Timer(
        // TODO : Timer가 아닌 자동로그인 로직 이후에 실행되도록 변경
        Duration(seconds: 1), ()=>{
          if (!_authController.isLogin) Get.toNamed('login')
          else Get.toNamed('home')
        }
      )
    });

    return Container(
      child: Text('SPLASH!!!'),
    );
  }
}
