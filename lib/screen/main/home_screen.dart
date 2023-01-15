import 'package:cosc/screen/main/components/main_bottom_sheet.dart';
import 'package:cosc/widget/cosc_appbar.dart';
import 'package:cosc/widget/expanded_rounded_card.dart';
import 'package:cosc/widget/profile_section.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String userid = "CoScID";
    return Scaffold(
      appBar: const CoscAppBar(),
      body: Column(
        children: [
          const ProfileSection(),
          const SizedBox(
            height: 15.0,
          ),
          ExpandedRoundedCard(
            child: MainBottomSheet(
              language: "Python",
              userid: userid,
              completed: false,
            ),
          ),
        ],
      ),
    );
  }
}
