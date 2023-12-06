import 'package:flutter/material.dart';
import 'package:islamic_app/config/routes/routes.dart';
import 'package:islamic_app/feature/home/homeScreen.dart';
import 'package:islamic_app/feature/index_11_list/index11Screen.dart';
import 'package:islamic_app/feature/index_5_list/index5Screen.dart';
import 'package:islamic_app/feature/index_9_list/index9Screen.dart';
import 'package:islamic_app/feature/splash/splashScreen.dart';

void main() {
  runApp(MaterialApp(
    home: const splashScreen(),
    debugShowCheckedModeBanner: false,
    routes: {
      homeScreenRoute: (context) => const homeScreen(),
      index5ScreenRoute: (context) => const index5Screen(),
      index9ScreenRoute: (context) => const index9Screen(),
      index11ScreenRoute: (context) => const index11Screen()
    },
  ));
}
