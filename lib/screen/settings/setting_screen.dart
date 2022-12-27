import 'package:cosc/screen/settings/components/alert_switch.dart';
import 'package:cosc/screen/settings/components/setting_box.dart';
import 'package:cosc/screen/settings/components/setting_text.dart';
import 'package:cosc/screen/settings/components/version.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            SettingBox(child: AlertSwitch()),
            SettingBox(child: SettingText('관심 카테고리 설정')),
            SettingBox(child: SettingText('이용약관')),
            SettingBox(child: Version()),
            SettingBox(child: SettingText('로그아웃')),
            SettingBox(child: SettingText('계정탈퇴')),
            SettingBox(child: SettingText('고객센터')),
          ]
      ),
    );
  }
}



