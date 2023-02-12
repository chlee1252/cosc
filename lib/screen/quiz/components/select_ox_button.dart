import 'package:cosc/constants/constants.dart';
import 'package:cosc/constants/select.dart';
import 'package:flutter/material.dart';

class SelectOXButton extends StatelessWidget {
  final bool isSelected;
  final String ox;

  const SelectOXButton({
    Key? key,
    required this.isSelected,
    required this.ox,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: isSelected ? selectedBackgroundColor : nonSelectedBackgroundColor,
        ),
        margin: const EdgeInsets.symmetric(horizontal: 30),
        child: OXButton(ox: ox, isSelected: isSelected) // : const XButton(isSelected: isSelected)
    );
  }
}

class OXButton extends StatelessWidget {
  final bool isSelected;
  final String ox;

  const OXButton({
    Key? key,
    this.isSelected = false,
    required this.ox,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color textColor = isSelected ? selectedTextColor : nonSelectedTextColor;
    return IconButton(
      color: textColor,
      icon: Icon(ox == "O" ? Icons.circle_outlined : Icons.close) ,
      iconSize: 60,
      onPressed: () {  },
    );
  }
}