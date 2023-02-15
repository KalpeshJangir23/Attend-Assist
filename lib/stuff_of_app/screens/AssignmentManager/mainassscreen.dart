import 'package:attend_assist/impstuff/colorss.dart';
import 'package:attend_assist/stuff_of_app/screens/AssignmentManager/assignmentDatabase/data.dart';
import 'package:attend_assist/stuff_of_app/screens/AssignmentManager/taskcontainer.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../impstuff/dialog_box.dart';

class MainAssScreen extends StatefulWidget {
  const MainAssScreen({super.key});

  @override
  State<MainAssScreen> createState() => _MainAssScreenState();
}

class _MainAssScreenState extends State<MainAssScreen> {
  // referencing the hive box
  final _assignmentBox = Hive.box("assignBox");
  ToDODataBase db = ToDODataBase();

  @override
  void initState() {
    // if this is the first time opening the app then create the default data for the first time
    if (_assignmentBox.get("TODOLIST") == null) {
      db.createInitialData();
    } else {
      // there already exist the data
      db.loadDataBase();
    }
    super.initState();
  }

  final _controller = TextEditingController();

  void checkboxChanged(bool? value, int index) {
    setState(() {
      db.todolist[index][1] = !db.todolist[index][1];
    });
// if user make any change in the todo list then list should update
    db.updateDatabase();
  }

  void saveNewtaxk() {
    setState(() {
      db.todolist.add([_controller.text, false]);
      _controller.clear();
    });
    Navigator.of(context).pop();
    // if user make any change in the todo list then list should update
    db.updateDatabase();
  }

  // create a new task
  void createNewTask() {
    showDialog(
      context: context,
      builder: (context) {
        return DialogBox(
          controller: _controller,
          onSave: () => saveNewtaxk(),
          onCancel: () => Navigator.of(context).pop(),
        );
      },
    );
  }

  void deletetask(int index) {
    setState(() {
      db.todolist.removeAt(index);
    });
    // if user make any change in the todo list then list should update
    db.updateDatabase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackcolor,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FloatingActionButton(
          backgroundColor: goldencolor,
          onPressed: () => createNewTask(),
          child: const Icon(
            Icons.add,
            color: blackcolor,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: db.todolist.length,
        itemBuilder: (context, index) {
          return ToDoTile(
            taskName: db.todolist[index][0],
            taskCompleted: db.todolist[index][1],
            onChanged: (value) => checkboxChanged(value, index),
            deleteFunction: (context) => deletetask(index),
          );
        },
      ),
    );
  }
}
