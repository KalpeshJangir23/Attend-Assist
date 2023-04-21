import 'package:attend_assist/impstuff/colorss.dart';
import 'package:attend_assist/stuff_of_app/screens/attendanceScreen/attendDialogbox.dart';
import 'package:attend_assist/stuff_of_app/screens/attendanceScreen/containerUi.dart';
import 'package:flutter/material.dart';

class AttendacePage extends StatefulWidget {
  const AttendacePage({super.key});

  @override
  State<AttendacePage> createState() => _AttendacePageState();
}

class _AttendacePageState extends State<AttendacePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackcolor,
      body: ListView(
        children: [
          ContainerUi(
            deletevar: (p0) {},
            subjectName: "fucking no idea about",
          ),
          SizedBox(
            height: 10,
          ),
          ContainerUi(
            deletevar: (p0) {},
            subjectName: "monica ki ",
          ),
        ],
      ),
    );
  }
}
