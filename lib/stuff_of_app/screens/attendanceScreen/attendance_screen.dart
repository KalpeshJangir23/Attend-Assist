// // ignore_for_file: non_constant_identifier_names

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
  List subjectContainer = [[], []];

  void saveNewSubject() {
    setState(() {
      subjectContainer.add([
        _attendcontroller.text,
        _subjectTlecture.text,
        _attendedlecture.text,
      ]);
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

  void presentupDate() {
    setState(() {
      if (subjectContainer[1] >= 0) {
        subjectContainer[1]++;
      } else {
        subjectContainer[1] = 0;
      }
    });
  }

  void presentupDateforMinus() {
    setState(() {
      if (subjectContainer[1] >= 0) {
        subjectContainer[1]--;
      } else {
        subjectContainer[1] = 0;
      }
    });
  }

  void createNewSubject() {
    showDialog(
      context: context,
      builder: (context) {
        return AttendDialogBox(
          controller: _attendcontroller,
          subjectTlecture: _subjectTlecture,
          attendLecture: _attendedlecture,
          onSave: () => saveNewSubject(),
          onCancel: () => Navigator.of(context).pop(),
        );
      },
    );
    // }

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
              SubjectNumber: subjectContainer[index][2],
              AttendedNumber: subjectContainer[index][1],
              deletevar: (p0) {},
              minusdecrement: (p0) {},
              plusincremnent: (p0) {},

              //
            );
          },
        ),
      );
    }
  }
}
