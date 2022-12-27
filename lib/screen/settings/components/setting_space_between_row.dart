import 'package:flutter/material.dart';

class SettingSpaceBetweenRow extends StatelessWidget {
  final Widget leftSideWidget;
  final Widget rightSideWidget;

  const SettingSpaceBetweenRow({Key? key, required this.leftSideWidget, required this.rightSideWidget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          leftSideWidget,
          rightSideWidget
        ]
    );
  }
}
