import 'package:dot_me/View/Screen/HomeScreen/MainScreen/MainDrawerScreen/compunents/Appbar.dart';
import 'package:dot_me/View/Screen/HomeScreen/MainScreen/MainDrawerScreen/MainDashboard.dart';
import 'package:dot_me/View/Screen/HomeScreen/MainScreen/Side_Menu/Side_menu.dart';
import 'package:dot_me/View/Screen/HomeScreen/MainScreen/Side_Menu/compunents/DrawerIconButton.dart';
import 'package:dot_me/View/Utils/Responsive/Risponsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainScreen extends StatelessWidget {
  @override
  bool showScreen = false;

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // We want this side menu only for large screen
            if (Responsive.isDesktop(context))
              Expanded(
                  flex: 1,
                  // default flex = 1
                  // and it takes 1/6 part of the screen
                  child: Container(
                    height: double.infinity,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Column(
                          children: [
                            2.verticalSpace,
                            Container(
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 8),
                              height: 52,
                              width: 52,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('assets/logoball.png'),
                                      fit: BoxFit.fill)),
                            ),
                            const SizedBox(
                              width: 35,
                              child: Divider(
                                thickness: 1,
                                color: Color(0xffF3F3F3),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                showScreen = true;
                              },
                              child: DrawerIconButton(
                                image: 'assets/dotedicon.png',
                              ),
                            ),
                            DrawerIconButton(
                              image: 'assets/calendericon.png',
                            ),
                            DrawerIconButton(
                              image: 'assets/personicon.png',
                            ),
                            DrawerIconButton(
                              image: 'assets/massegebox.png',
                            ),
                            DrawerIconButton(
                              image: 'assets/notesicon.png',
                            ),
                            DrawerIconButton(
                              image: 'assets/meicon.png',
                            ),
                            const Spacer(),
                            DrawerIconButton(
                              image: 'assets/logout.png',
                            ),
                          ],
                        ),
                        const VerticalDivider(
                          thickness: 2,
                          color: Color(0xffF3F3F3),
                        )
                      ],
                    ),
                  )),
             Expanded(
              // It takes 5/6 part of the screen
              flex: 15,

              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppbarWidget(),
                  Divider(
                    thickness: 1,
                    color: Color(0xffF3F3F3),
                  )
                  // MainDashboard()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
