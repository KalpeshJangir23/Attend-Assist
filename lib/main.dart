// import 'package:attend_assist/stuff_of_app/bottomNavigation/bottom_nav.dart';
// import 'package:attend_assist/stuff_of_app/bottomNavigation/screens/attendassistscreen.dart';
// ignore_for_file: unused_local_variable

import 'package:attend_assist/stuff_of_app/attendassistscreen.dart';
import 'package:flutter/material.dart';
import 'package:attend_assist/onetimescreens/entranceScreen.dart';
import 'package:hive_flutter/hive_flutter.dart';
//import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() async {
  await Hive.initFlutter();
  var box = await Hive.openBox("assignBox");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Attend Assist',
      debugShowCheckedModeBanner: false,
      home: AttendAssist(),
    );
  }
}
