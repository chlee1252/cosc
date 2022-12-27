import 'package:flutter/material.dart';

class ColorUtils {
  static Color convertHexToColor({required String hexColorCode}) {
    return Color(
        int.parse(hexColorCode.substring(1, 7), radix: 16) + 0xFF000000);
  }
}
