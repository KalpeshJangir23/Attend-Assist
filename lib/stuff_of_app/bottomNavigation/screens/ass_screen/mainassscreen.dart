import 'package:attend_assist/colorpallete/colorss.dart';
import 'package:attend_assist/stuff_of_app/bottomNavigation/screens/ass_screen/taskcontainer.dart';
import 'package:flutter/material.dart';

class MainAssScreen extends StatefulWidget {
  const MainAssScreen({super.key});

  @override
  State<MainAssScreen> createState() => _MainAssScreenState();
}

class _MainAssScreenState extends State<MainAssScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackcolor,
      body: ListView(
        children: [
          ToDoTile(
            taskName: "01",
            taskCompleted: true,
            onChanged: (p0) {},
            deleteFunction: (p0) {},
          ),
        ],
      ),
    );
  }
}
