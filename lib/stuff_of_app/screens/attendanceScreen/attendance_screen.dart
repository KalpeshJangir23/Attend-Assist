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
    final _subnamecontroller = TextEditingController();
    final _attendnocontroller = TextEditingController();
    final _totalnolecturecontroller = TextEditingController();
    List subjectContainer = [
      ["Mathematics enginnering", "30", "30"],
      ["Analysis of Alogorihtm", "0", "35"],
    ];

    void savelecturedetail() {
      setState(
        () {
          subjectContainer.add([
            _subnamecontroller.text,
            _attendnocontroller.text,
            _totalnolecturecontroller.text,
          ]);
        },
      );
    }

    void addnewSubject() {
      showDialog(
        context: context,
        builder: (context) {
          return AttendDialogBox(
            onSave: savelecturedetail,
            onCancel: () => Navigator.of(context).pop(),
            subnamecontroller: _subnamecontroller,
            attendnocontroller: _attendnocontroller,
            totalnolecturecontroller: _totalnolecturecontroller,
          );
        },
      );
    }

    return Scaffold(
      backgroundColor: blackcolor,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FloatingActionButton(
          backgroundColor: goldencolor,
          onPressed: addnewSubject,
          child: const Icon(
            Icons.add,
            color: blackcolor,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: subjectContainer.length,
        itemBuilder: (context, index) {
          return ContainerUi(
            subjectName: subjectContainer[index][0],
            totalsubjectlecture: subjectContainer[index][2],
            deletevar: (p0) {},
            minusdecrement: (p0) {},
            plusincremnent: (p0) {},
            attendance: subjectContainer[index][1],
            //totalattendance: subjectContainer[index][3],
          );
        },
      ),
    );
  }
}
