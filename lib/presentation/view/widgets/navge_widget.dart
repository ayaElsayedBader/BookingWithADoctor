import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";


import '../../../core/resource/color_app.dart';

import '../../../core/resource/string_app.dart';

import '../../../core/resource/val_app.dart';
import '../page/home_screan.dart';
import '../page/massage_screen.dart';
import '../page/schudel.dart';
import '../page/setting.dart';

class NavWidget extends StatefulWidget {
  const NavWidget({Key? key}) : super(key: key);

  @override
  State<NavWidget> createState() => _NavWidgetState();
}

class _NavWidgetState extends State<NavWidget> {
  int _selectIndex = 0;

  final List screens = [
    const HomeScreens(),
    const MassageScreen(),
    const SettingScreen(),
    const ScheduleScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_selectIndex],
      bottomNavigationBar: Container(
          height: ValApp.va80,
          color: Colors.teal,
          child: BottomNavigationBar(
            currentIndex: _selectIndex,
            onTap: (index) {
              setState(() {
                _selectIndex = index;
              });
            },
            unselectedItemColor: ColorApp.rose,
            selectedFontSize: ValApp.va20,
            selectedItemColor: ColorApp.move,
            selectedLabelStyle: const TextStyle(
              fontSize: ValApp.va20,
              color: ColorApp.rose,
            ),
            items: const [
              BottomNavigationBarItem(
                label: StringApp.home,
                icon: Icon(CupertinoIcons.home),
              ),
              BottomNavigationBarItem(
                label: StringApp.chat,
                icon: Icon(CupertinoIcons.chat_bubble_fill),
              ),
              BottomNavigationBarItem(
                label: StringApp.setting,
                icon: Icon(CupertinoIcons.settings),
              ),
              BottomNavigationBarItem(
                label: '',
                icon: Icon(CupertinoIcons.arrow_2_squarepath),
              ),
            ],
          )),
    );
  }
}
