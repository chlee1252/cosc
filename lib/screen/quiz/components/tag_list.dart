import 'package:cosc/constants.dart';
import 'package:flutter/material.dart';

class TagList extends StatelessWidget {
  const TagList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.symmetric(vertical: 0),
          padding: const EdgeInsets.symmetric(vertical: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            color:  secondPointColor,
          ),
          width: 100,
          child: Text("프론트엔드", style: const TextStyle(color: Colors.black, fontSize: 16)),
        ),
      ],
    );
  }
}
