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
  final _controller = TextEditingController();

  final List data = [
    "Maths",
  ];

  void onSave() {
    setState(() {
      data.add(_controller.text);
      _controller.clear();
    });
    Navigator.of(context).pop();
  }

  void createTask() {
    showDialog(
      context: context,
      builder: ((context) {
        return AttendDialogBox(
          subnamecontroller: _controller,
          onSave: onSave,
          onCancel: () => Navigator.of(context).pop(),
        );
      }),
    );
  }

  void deleteTask(int index) {
    setState(() {
      data.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackcolor,
      floatingActionButton: FloatingActionButton(
        onPressed: createTask,
        child: const Icon(
          Icons.add,
          color: whitecolor,
        ),
        backgroundColor: goldencolor,
      ),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: ((context, index) {
          return ContainerUi(
            subjectName: data[index],
            deletevar: (contest) => deleteTask(index),
          );
        }),
      ),
    );
  }
}
