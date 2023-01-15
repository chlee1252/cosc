import 'package:flutter/material.dart';

class CheckButton extends StatelessWidget {
  const CheckButton({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Image.asset(
        "assets/image/check.png",
        width: 70.0,
        height: 70.0,
      ),
    );
  }
}
