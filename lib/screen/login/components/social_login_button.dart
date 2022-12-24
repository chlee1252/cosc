import 'package:flutter/material.dart';

class SocialLoginButton extends StatelessWidget {
  const SocialLoginButton({
    Key? key,
    required this.image,
    required this.backgroundColor,
    required this.onPressed,
  }) : super(key: key);

  final String image;
  final Color backgroundColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        padding: MaterialStateProperty.resolveWith(
            (states) => const EdgeInsets.all(15.0)),
        backgroundColor:
            MaterialStateProperty.resolveWith((states) => backgroundColor),
        shape:
            MaterialStateProperty.resolveWith((states) => const CircleBorder()),
      ),
      child: Image.asset(
        image,
        width: 20,
        height: 20,
      ),
    );
  }
}
