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

  void deleteContainer(int index) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Delete Container?"),
          content: Text("Are you sure you want to delete this container?"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("CANCEL"),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  data.removeAt(index);
                });
                deleteTask(index);
                Navigator.pop(context);
              },
              child: Text("DELETE"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackcolor,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 50.0),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: FloatingActionButton(
            onPressed: createTask,
            elevation: 10,
            highlightElevation: 10,
            backgroundColor: goldencolor,
            child: const Icon(
              Icons.add,
              color: blackcolor,
              size: 25,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: data.length,
              itemBuilder: ((context, index) {
                return ContainerUi(
                  subjectName: data[index],
                  deletevar: (contest) => deleteTask(index),
                );
              }),
            ),
          ),
          Container(
            height: 60,
            width: double.infinity,
            color: blackcolor,
          ),
        ],
      ),
    );
  }
}
