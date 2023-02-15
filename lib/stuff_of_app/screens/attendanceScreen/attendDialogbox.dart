// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../../impstuff/buttons.dart';
import '../../../impstuff/colorss.dart';

class DialogBoxContainerUI extends StatelessWidget {
  const DialogBoxContainerUI({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: lightblackcolor,
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // get user input
            const TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Add a new task",
              ),
            ),

            // buttons -> save + cancel
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // save button
                MyButton(
                  text: "Save",
                  onPressed: () {},
                ),

                const SizedBox(width: 8),

                // cancel button
                MyButton(
                  text: "Cancel",
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
    ;
  }
}
