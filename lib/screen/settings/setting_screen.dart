import 'dart:ffi';

import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            SettingBox(child: SettingText('알림설정')),
            SettingBox(child: SettingText('관심 카테고리 설정')),
            SettingBox(child: SettingText('이용약관')),
            SettingBox(child: SettingText('버전')),
            SettingBox(child: SettingText('로그아웃')),
            SettingBox(child: SettingText('계정탈퇴')),
            SettingBox(child: SettingText('고객센터')),
          ]
      ),
    );
  }
}

class SettingBox extends StatelessWidget {
  final Widget? child;
  static const double containerPaddingLeftRight = 20;
  static const double containerPaddingTopBottom = 0;

  const SettingBox({Key? key, @required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(containerPaddingLeftRight, containerPaddingTopBottom, containerPaddingLeftRight, containerPaddingTopBottom),
      width: double.infinity,
      height: 80,
      color: Colors.black,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [child!],
      ),
      // alignment: Alignment.center,
    );
  }
}

class SettingText extends StatelessWidget {
  final String? data;

  const SettingText(this.data, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      data!,
      style: const TextStyle(fontSize: 20, color: Colors.white),
      // textAlign: TextAlign.justify,
    );
  }
}

