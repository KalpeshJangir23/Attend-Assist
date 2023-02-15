//import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class ToDODataBase {
  List todolist = [];

  //reference the box
  final _assignmentBox = Hive.box("assignBox");

  // this is create the first time ever open this app
  void createInitialData() {
    todolist = [
      ["Maths Tutorial-01", false],
      ["Maths Tutorial-02", false],
    ];
  }

  // load the data from the database
  void loadDataBase() {
    todolist = _assignmentBox.get("TODOLIST");
  }

  // Update the database
  void updateDatabase() {
    _assignmentBox.put("TODOLIST", todolist);
  }
}
