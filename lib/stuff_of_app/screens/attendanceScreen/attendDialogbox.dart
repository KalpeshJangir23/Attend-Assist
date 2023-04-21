// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables

import 'package:attend_assist/impstuff/buttons.dart';
import 'package:attend_assist/impstuff/colorss.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AttendDialogBox extends StatelessWidget {
  final subnamecontroller;
  VoidCallback onSave;
  VoidCallback onCancel;

  AttendDialogBox({
    super.key,
    required this.onSave,
    required this.onCancel,
    required this.subnamecontroller,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: blackcolor,
      content: Container(
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: Text(
                "Enter the subject Name",
                style: GoogleFonts.lato(
                    color: goldencolor, fontWeight: FontWeight.bold),
              ),
            ),
            // Subject Name
            TextField(
              controller: subnamecontroller,
              style: GoogleFonts.lato(
                color: goldencolor,
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Enter Subject Name",
                hintStyle:
                    GoogleFonts.lato(color: Colors.white38, fontSize: 12),
              ),
            ),

            // buttons -> save + cancel
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // save button
                MyButton(text: "Save", onPressed: onSave),

                const SizedBox(width: 8),

                // cancel button
                MyButton(text: "Cancel", onPressed: onCancel),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
