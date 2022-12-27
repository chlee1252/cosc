import 'package:cosc/screen/settings/components/setting_text.dart';
import 'package:flutter/material.dart';
import 'package:cosc/constants.dart';

class AlertSwitch extends StatefulWidget {
  const AlertSwitch({Key? key}) : super(key: key);

  @override
  State<AlertSwitch> createState() => _AlertSwitchState();
}

class _AlertSwitchState extends State<AlertSwitch> {
  bool alertState = false;
  void toggleAlert(bool newState) {
    setState(() => {
      alertState = newState
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SettingText('알림설정'),
          Switch.adaptive(
            value: alertState,
            onChanged: (value) => toggleAlert(value),
            materialTapTargetSize: MaterialTapTargetSize.padded,
            trackColor: MaterialStateProperty.all(Colors.black),
            activeColor: highlightColor,
          )
        ]
    );
  }
}