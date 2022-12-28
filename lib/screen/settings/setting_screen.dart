import 'package:cosc/screen/settings/components/alert_switch.dart';
import 'package:cosc/screen/settings/components/setting_box.dart';
import 'package:cosc/screen/settings/components/setting_text.dart';
import 'package:cosc/screen/settings/components/version.dart';
import 'package:cosc/screen/settings/components/yes_no_dialog.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SettingBox(onTapCallback: () {}, child: const AlertSwitch()),
            SettingBox(onTapCallback: () {route();}, child: const SettingText('관심 카테고리 설정')),
            SettingBox(onTapCallback: () {}, child: const SettingText('이용약관')),
            SettingBox(onTapCallback: () {}, child: const Version()),
            SettingBox(onTapCallback: () {popLogoutDialog(context);}, child: const SettingText('로그아웃')),
            SettingBox(onTapCallback: () {popWithdrawDialog(context);}, child: const SettingText('계정탈퇴')),
            SettingBox(onTapCallback: () {route();}, child: const SettingText('고객센터')),
          ]
      ),
    );
  }
  // route 시키는 메서드 하나
  void route() {

  }

  // Dialog 띄우는 메서드 하나
  void popDialog(BuildContext context,
      {
        required String question,
        required String yes,
        required String no,
        required Function yesCallback
      }) {
    showDialog<String>(
        context: context,
        builder: (BuildContext context) => YesNoDialog(question: question , yes: yes, no: no, yesCallback: yesCallback)
    );
  }

  void popWithdrawDialog(BuildContext context) {
    popDialog(context, question: '계정을 탈퇴하면 문제 및 답변을 복구할 수 없습니다. 정말 탈퇴하시겠습니까?', yes: '회원탈퇴', no: '취소', yesCallback: (){});
  }

  void popLogoutDialog(BuildContext context) {
    popDialog(context, question: '로그아웃 하시겠습니까?', yes: '로그아웃', no: '취소', yesCallback: (){} );
  }
}



