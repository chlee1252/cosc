import 'package:cosc/components/tag.dart';
import 'package:cosc/constants/constants.dart';
import 'package:flutter/material.dart';

class TagList extends StatelessWidget {
  final List<String> tagNameList;

  const TagList({Key? key, required this.tagNameList}) : super(key: key);
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
      children: this.tagNameList.map<Tag>((tag) => buildTag(tag)).toList()
    );
  }

}
