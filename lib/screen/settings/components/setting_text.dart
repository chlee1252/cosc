import 'package:flutter/material.dart';

class SettingText extends StatelessWidget {
  final String? data;

  const SettingText(this.data, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      data!,
      style: const TextStyle(fontSize: 24, color: Colors.white),
    );
  }
}