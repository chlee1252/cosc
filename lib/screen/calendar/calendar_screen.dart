import 'package:cosc/constants.dart';
import 'package:cosc/screen/calendar/components/calendar.dart';
import 'package:cosc/widget/cosc_appbar.dart';
import 'package:cosc/widget/expanded_rounded_card.dart';
import 'package:cosc/widget/profile_section.dart';
import 'package:flutter/material.dart';

class CalendarScreen extends StatelessWidget {
  const CalendarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CoscAppBar(),
      body: Container(
        // padding: const EdgeInsets.all(16.0),
        // decoration: BoxDecoration(
        //   color: secondThemeColor,
        //   borderRadius: BorderRadius.circular(20),
        // ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            const ProfileSection(),
            ExpandedRoundedCard(
              child: SingleChildScrollView(
                child: Column(children: [
                  Center(
                    child: Calendar(title: "Cosc"),
                  ),
                  Container(
                    child: Text("AD"),
                    height: 50.0,
                    width: double.infinity,
                    color: thirdThemeColor,
                  ),
                ],),
              ),
            )

          ],
        ),
      ),
    );

  }
}

