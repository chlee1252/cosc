import 'package:cosc/constants/constants.dart';
import 'package:cosc/constants/select.dart';
import 'package:flutter/material.dart';

class SelectOXButton extends StatelessWidget {
  final bool isSelected;
  const SelectOXButton({
    Key? key,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: isSelected ? selectedBackgroundColor : nonSelectedBackgroundColor,
        ),
        margin: const EdgeInsets.symmetric(horizontal: 30),
        child: isSelected ? const OButton()  : const XButton()
    );
  }
}

class OButton extends StatelessWidget {
  const OButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      color: Colors.black,
      icon: const Icon(Icons.circle_outlined) ,
      iconSize: 60,
      onPressed: () {  },
    );
  }
}

class XButton extends StatelessWidget {
  const XButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      color: Colors.white,
      icon: const Icon(Icons.close) ,
      iconSize: 60,
      onPressed: () {  },
    );
  }
}
