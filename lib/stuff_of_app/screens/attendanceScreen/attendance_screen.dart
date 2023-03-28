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
    final subnamecontroller = TextEditingController();
    final attendnocontroller = TextEditingController();
    final totalnolecturecontroller = TextEditingController();

    List subjectContainer = [
      ["Mathematics enginnering", "30", "30"],
      ["Analysis of Alogorihtm", "0", "35"],
    ];

    // add new subject
    void addSubject() {
      setState(() {
        subjectContainer.add([
          subnamecontroller.text,
          attendnocontroller.text,
          totalnolecturecontroller.text
        ]);
      });
      Navigator.of(context).pop();
      print("new subject added: ");
    }

    void addnewAttendancecontainer() {
      showDialog(
        context: context,
        builder: (context) {
          return AttendDialogBox(
            onSave: addSubject,
            onCancel: () => Navigator.of(context).pop(),
            subnamecontroller: subnamecontroller,
            attendnocontroller: attendnocontroller,
            totalnolecturecontroller: totalnolecturecontroller,
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
          onPressed: addnewAttendancecontainer,
          child: const Icon(
            Icons.add,
            color: blackcolor,
          ),
        ),
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
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
