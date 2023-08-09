import 'package:dot_me/View/Screen/Auth_Screen/LoginScreen.dart';
import 'package:dot_me/View/Screen/Auth_Screen/Ragister2.dart';
import 'package:dot_me/View/Screen/Auth_Screen/Ragister3.dart';
import 'package:dot_me/View/Screen/Auth_Screen/Ragister4.dart';
import 'package:dot_me/View/Screen/Auth_Screen/Ragister5.dart';
import 'package:dot_me/View/Screen/Auth_Screen/RagisterScreen.dart';
import 'package:dot_me/View/Screen/ChatScreen.dart';
import 'package:dot_me/View/Screen/HomeScreen/KalenderScreen.dart';
import 'package:dot_me/View/Screen/HomeScreen/MainScreen/MainDrawerScreen/MainDashboard.dart';
import 'package:dot_me/View/Screen/HomeScreen/MainScreen/MainScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'View/Screen/SplashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        // designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
            defaultTransition: Transition.rightToLeftWithFade,
            transitionDuration: Duration(milliseconds: 500),
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(scaffoldBackgroundColor: Colors.white),
            home: KalenderScreen(),
          );
        });
  }
}
