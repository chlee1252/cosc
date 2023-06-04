import 'package:cosc/constants.dart';
import 'package:flutter/material.dart';

import 'logo.dart';

class CoscAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CoscAppBar({Key? key, this.actions}) : super(key: key);

  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      centerTitle: false,
      title: const Logo(
        size: appBarLogoSize,
        color: Colors.white,
      ),
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
