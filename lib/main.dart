import 'package:cosc/screen/splash/splash_screen.dart';
import 'package:cosc/screen/testHome/TestHomeScreen.dart';
import 'package:cosc/screen/testLogin/TestLoginScreen.dart';
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
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => SplashScreen()),
        GetPage(name: '/login', page: () => const TestLoginScreen()),
        GetPage(name: '/home', page: () => const TestHomeScreen())
      ],
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
