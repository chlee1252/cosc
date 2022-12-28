import 'package:cosc/screen/settings/components/alert_switch.dart';
import 'package:cosc/screen/settings/components/setting_box.dart';
import 'package:cosc/screen/settings/components/setting_text.dart';
import 'package:cosc/screen/settings/components/version.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  // route 시키는 메서드 하나

  // 모달 띄우는 메서드 하나

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SettingBox(onTapCallback: () {}, child: const AlertSwitch()),
            SettingBox(onTapCallback: () {}, child: const SettingText('관심 카테고리 설정')),
            SettingBox(onTapCallback: () {}, child: const SettingText('이용약관')),
            SettingBox(onTapCallback: () {}, child: const Version()),
            SettingBox(onTapCallback: () {}, child: const SettingText('로그아웃')),
            SettingBox(onTapCallback: () {}, child: const SettingText('계정탈퇴')),
            SettingBox(onTapCallback: () {}, child: const SettingText('고객센터')),
          ]
      ),
    );
  }
}



