import 'package:cosc/constants.dart';
import 'package:cosc/service/auth/auth_controller.dart';
import 'package:cosc/widget/logo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final AuthController authController = Get.find();

  @override
  void initState() {
    super.initState();
    _checkAuth();
  }

  _checkAuth() async {
    await authController.checkToken();
    if (authController.isLogin.value) {
      Future.delayed(const Duration(milliseconds: 500), () {
        Get.offAndToNamed('home');
      });
    } else {
      Future.delayed(const Duration(milliseconds: 500), () {
        Get.offAndToNamed('login');
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Logo(
          size: mainLogoSize,
          color: Colors.white,
        )
      ),
    );
  }
}
