import 'package:cosc/constants.dart';
import 'package:flutter/material.dart';

class YesNoDialog extends StatelessWidget {
  final String question;
  final String yes;
  final String no;
  final Function yesCallback;

  const YesNoDialog({
    Key? key,
    required this.question,
    required this.yes,
    required this.no,
    required this.yesCallback
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadiusDirectional.only(
              topStart: Radius.circular(20),
              topEnd: Radius.circular(20),
              bottomStart: Radius.circular(20),
              bottomEnd: Radius.circular(20)
          )
      ),
      insetPadding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            child: Text(question, style: const TextStyle( fontSize: 25)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: highlightColor,
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      shape: const RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.only(bottomStart: Radius.circular(20)))
                  ),
                  onPressed: () {
                    yesCallback();
                  },
                  child: Text(yes, style: TextStyle(fontSize: 16)),

                ),
              ),
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      shape: const RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.only(bottomEnd: Radius.circular(20)))
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(no, style: TextStyle(fontSize: 16, color: highlightColor)),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
