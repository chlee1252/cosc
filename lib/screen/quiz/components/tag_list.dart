import 'package:cosc/components/tag.dart';
import 'package:cosc/constants.dart';
import 'package:flutter/material.dart';

class TagList extends StatelessWidget {
  const TagList({Key? key}) : super(key: key);
  Tag buildTag(text) {
    return Tag(
      tagBackgroundColor: secondPointColor,
      verticalMargin: 0, verticalPadding: 5,
      borderRadius: 8,
      text: text,
      textColor: Colors.black,
      fontSize: 12,
      horizontalMargin: 3,
      horizontalPadding: 7,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildTag("프론트엔드"),
        buildTag("Frontend"),
        buildTag("Javascript"),
        buildTag("자바스크립트"),
      ],
    );
  }

}
