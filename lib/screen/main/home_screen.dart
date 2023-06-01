import 'package:cosc/domain/user/user.dart';
import 'package:cosc/screen/main/components/main_bottom_sheet.dart';
import 'package:cosc/service/user/controller/user_controller.dart';
import 'package:cosc/widget/cosc_appbar.dart';
import 'package:cosc/widget/expanded_rounded_card.dart';
import 'package:cosc/widget/profile_section.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final UserController _userController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CoscAppBar(),
      body: Column(
        children: [
          ProfileSection(user: _userController.user.value ?? User()),
          const SizedBox(
            height: 15.0,
          ),
          ExpandedRoundedCard(
            child: MainBottomSheet(
              user: _userController.user.value ?? User(),
              completed: false,
            ),
          ),
        ],
      ),
    );
  }
}
