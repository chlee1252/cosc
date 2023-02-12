import 'package:flutter/material.dart';

class Tag extends StatelessWidget {
  final Color tagBackgroundColor;
  final Color textColor;
  final double verticalMargin;
  final double verticalPadding;
  final double borderRadius;
  final double fontSize;
  final String text;
  final double? width;
  final double horizontalMargin;
  final double horizontalPadding;

  const Tag({
    Key? key,
    required this.tagBackgroundColor,
    required this.verticalMargin,
    required this.verticalPadding,
    required this.borderRadius,
    required this.text,
    required this.textColor,
    required this.fontSize,
    this.width,
    this.horizontalMargin = 0,
    this.horizontalPadding = 0
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(vertical: verticalMargin, horizontal: horizontalMargin),
      padding: EdgeInsets.symmetric(vertical: verticalPadding, horizontal: horizontalPadding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        color:  tagBackgroundColor,
      ),
      width: width,
      child: Text(text, style: TextStyle(color: textColor, fontSize: fontSize)),
    );
  }
}
