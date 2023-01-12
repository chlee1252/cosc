import 'package:cosc/screen/calendar/components/calendar.dart';
import 'package:flutter/material.dart';

class CalendarScreen extends StatelessWidget {
  const CalendarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Center(
              child: Calendar(title: "Cosc"),
            ),
            SizedBox(
              height: 50.0,
            ),
          ],
        ),
      ),
    );

  }
}

