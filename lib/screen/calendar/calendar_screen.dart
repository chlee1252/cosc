import 'package:cosc/constants.dart';
import 'package:cosc/screen/calendar/components/calendar.dart';
import 'package:flutter/material.dart';

class CalendarScreen extends StatelessWidget {
  const CalendarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: secondThemeColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Center(
              child: Calendar(title: "Cosc"),
            ),
            Container(
              child: Text("AD"),
              height: 200.0,
              width: double.infinity,
              color: thirdThemeColor,
            ),
          ],
        ),
      ),
    );

  }
}

