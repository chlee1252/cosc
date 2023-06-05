import 'package:cosc/screen/main/components/main_bottom_sheetmport 'package:cosc/widget/profile_section.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CoscAppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.calendar_month_rounded),
            onPressed: () => Get.toNamed("/calendar"),
          )
        ],
      ),
      body: Column(
        children: [
          ProfileSection(),
          const SizedBox(
            height: 15.0,
          ),
          ExpandedRoundedCard(
            child: MainBottomSheet(),
          ),
        ],
      ),
    );
  }
}
