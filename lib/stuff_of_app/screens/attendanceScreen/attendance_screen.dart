// ignore_for_file: non_constant_identifier_names

import 'package:attend_assist/stuff_of_app/screens/attendanceScreen/attendDialogbox.dart';
import 'package:attend_assist/stuff_of_app/screens/attendanceScreen/containerUi.dart';
import 'package:flutter/material.dart';

import '../../../impstuff/colorss.dart';

class AttendanceFile extends StatefulWidget {
  const AttendanceFile({super.key});

  @override
  State<AttendanceFile> createState() => _AttendanceFileState();
}

class _AttendanceFileState extends State<AttendanceFile> {
  final _attendcontroller = TextEditingController();
  final _subjectTlecture = TextEditingController();
  List subjectContainer = [
    ["Mathematics", "30"],
    ["AOA", "35"]
  ];

  void saveNewSubject() {
    setState(() {
      subjectContainer.add([_attendcontroller.text, _subjectTlecture.text]);
      _attendcontroller.clear();
      _subjectTlecture.clear();
    });
    Navigator.of(context).pop();
  }

  void deletesubject(int index) {
    setState(() {
      subjectContainer.removeAt(index);
    });
  }

  void createNewSubject() {
    showDialog(
      context: context,
      builder: (context) {
        return AttendDialogBox(
          controller: _attendcontroller,
          subjectTlecture: _subjectTlecture,
          onSave: () => saveNewSubject(),
          onCancel: () => Navigator.of(context).pop(),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackcolor,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FloatingActionButton(
          backgroundColor: goldencolor,
          onPressed: () => createNewSubject(),
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
            SubjectName: subjectContainer[index][0],
            SubjectNumber: subjectContainer[index][1],
            deletevar: (p0) => deletesubject(index),
            minusdecrement: (p0) {},
            plusincremnent: (p0) {},
          );
        },
      ),
    );
  }
}
