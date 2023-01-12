import 'package:flutter/material.dart';
import 'package:cosc/constants.dart';

class SettingBox extends StatelessWidget {
  final Widget? child;
  final VoidCallback? onTapCallback;

  static const double containerPaddingLeftRight = 20;
  static const double containerPaddingTopBottom = 0;

  const SettingBox({Key? key, required this.onTapCallback, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapCallback,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: containerPaddingTopBottom, horizontal: containerPaddingLeftRight),
        // padding: const EdgeInsets.fromLTRB(containerPaddingLeftRight, containerPaddingTopBottom, containerPaddingLeftRight, containerPaddingTopBottom),
        width: double.infinity,
        height: 80,
        color: firstThemeColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [child!],
        ),
      ),
    );
  }
}