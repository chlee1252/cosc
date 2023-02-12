import 'package:cosc/constants.dart';
import 'package:cosc/screen/calendar/calendar_screen.dart';
import 'package:cosc/screen/category/category_screen.dart';
import 'package:cosc/screen/login/login_screen.dart';
import 'package:cosc/screen/main/home_screen.dart';
import 'package:cosc/screen/settings/setting_screen.dart';
import 'package:cosc/screen/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: firstThemeColor,
      ),
      initialRoute: '/category',
      getPages: [
        GetPage(name: '/', page: () => SplashScreen()),
        GetPage(name: '/login', page: () => const LoginScreen()),
        GetPage(name: '/home', page: () => const HomeScreen()),
        GetPage(name: '/settings', page: () => const SettingScreen()),
        GetPage(name: '/calendar', page: () => const CalendarScreen()),
        GetPage(name: '/category', page: () => const CategoryScreen()),
      ],
    );
  }
}
