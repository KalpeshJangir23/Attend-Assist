import 'package:attend_assist/stuff_of_app/bottomNavigation/screens/AssignmentManager/attendassistscreen.dart';
import 'package:attend_assist/stuff_of_app/bottomNavigation/screens/community.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int index = 0;
  final List screen = [const CommunityPage(), const AttendAssist()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: getSelectedWidget(index: index),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        height: 60,
        color: const Color(0xff000000),
        //color: colors.white,
        backgroundColor: const Color(0xff000000),
        buttonBackgroundColor: const Color(0xffecae36),
        index: index,
        items: const [
          Icon(
            Icons.forum,
            size: 30,
            color: Color(0xffffffff),
          ),
          Icon(
            Icons.task,
            size: 30,
            color: Color(0xffffffff),
          )
        ],
        onTap: (selectedindex) {
          setState(() {
            index = selectedindex;
          });
        },
      ),
    );
  }

  Widget getSelectedWidget({required int index}) {
    Widget widget;
    switch (index) {
      case 0:
        widget = const CommunityPage();
        break;

      default:
        widget = const AttendAssist();
        break;
    }
    return widget;
  }
}
