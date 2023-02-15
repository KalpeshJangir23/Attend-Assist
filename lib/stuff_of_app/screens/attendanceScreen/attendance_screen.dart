import 'package:attend_assist/stuff_of_app/screens/attendanceScreen/attendDialogbox.dart';
import 'package:attend_assist/stuff_of_app/screens/attendanceScreen/containerUi.dart';
import 'package:flutter/material.dart';

import '../../../impstuff/colorss.dart';

class AttendanceFile extends StatelessWidget {
  const AttendanceFile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackcolor,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FloatingActionButton(
          backgroundColor: goldencolor,
          onPressed: () => DialogBoxContainerUI(),
          child: const Icon(
            Icons.add,
            color: blackcolor,
          ),
        ),
      ),
      body: ListView(
        children: const [
          ContainerUi(),
          ContainerUi(),
        ],
      ),
    );
  }
}
