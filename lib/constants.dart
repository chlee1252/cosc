import 'package:cosc/utils/color_utils.dart';
import 'package:flutter/material.dart';

final Color kakaoColor = ColorUtils.convertHexToColor(hexColorCode: "#FEE600");
final Color highlightColor =
    ColorUtils.convertHexToColor(hexColorCode: "#0d2140");

final Color firstThemeColor =
    ColorUtils.convertHexToColor(hexColorCode: "#000A12");
final Color secondThemeColor =
    ColorUtils.convertHexToColor(hexColorCode: "#263238");
final Color thirdThemeColor =
    ColorUtils.convertHexToColor(hexColorCode: "#4F5B62");

final Color firstPointColor =
    ColorUtils.convertHexToColor(hexColorCode: "#5E21CD");
final Color secondPointColor =
    ColorUtils.convertHexToColor(hexColorCode: "#D76D77");
final Color thirdPointColor =
    ColorUtils.convertHexToColor(hexColorCode: "#FFAF7B");

final Color redAccentColor =
    ColorUtils.convertHexToColor(hexColorCode: "#D04F4F");

final List<Color> pointGradient = [
  firstPointColor,
  thirdPointColor,
];

LinearGradient progressBarGradient = LinearGradient(colors: pointGradient);

const double mainLogoSize = 60.0;
const double appBarLogoSize = 30.0;
