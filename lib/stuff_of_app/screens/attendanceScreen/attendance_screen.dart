// ignore_for_file: library_private_types_in_public_api

import 'package:attend_assist/impstuff/colorss.dart';
import 'package:attend_assist/stuff_of_app/screens/attendanceScreen/attendDialogbox.dart';
import 'package:attend_assist/stuff_of_app/screens/attendanceScreen/containerUi.dart';
import 'package:flutter/material.dart';

class AttendacePage extends StatefulWidget {
  const AttendacePage({super.key});

  @override
  _AttendacePageState createState() => _AttendacePageState();
}

class _AttendacePageState extends State<AttendacePage> {
  final _controller = TextEditingController();

  List<ContainerUi> containerList = [
    ContainerUi(
      subjectName: 'Maths',
    ),
  ];

  void onSave() {
    setState(() {
      containerList.add(ContainerUi(
        subjectName: _controller.text,
      ));
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

  Future<void> showDeleteConfirmationDialog(int index) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Confirm Delete'),
          content:
              const Text('Are you sure you want to delete this container?'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                deleteTask(index);
                Navigator.of(context).pop();
              },
              child: const Text('Delete'),
            ),
          ],
        );
      },
    );
  }

  void deleteTask(int index) {
    setState(() {
      containerList.removeAt(index);
    });
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
              itemCount: containerList.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onLongPress: () => showDeleteConfirmationDialog(index),
                  child: containerList[index],
                );
              },
            ),
          ),
          Container(
            height: 60,
            width: double.infinity,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
