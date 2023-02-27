// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables

import 'package:attend_assist/impstuff/buttons.dart';
import 'package:attend_assist/impstuff/colorss.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';

class AttendDialogBox extends StatelessWidget {
  final controller;
  final subjectTlecture;
  final attendLecture;
  VoidCallback onSave;
  VoidCallback onCancel;

  AttendDialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
    required this.subjectTlecture,
    required this.attendLecture,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: blackcolor,
      content: Container(
        height: 260,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: Text(
                "Enter the data ",
                style: GoogleFonts.lato(
                    color: goldencolor, fontWeight: FontWeight.bold),
              ),
            ),
            // get user input
            TextField(
              controller: controller,
              style: GoogleFonts.lato(
                color: goldencolor,
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Add Subject Name",
                hintStyle:
                    GoogleFonts.lato(color: Colors.white38, fontSize: 15),
              ),
            ),

            TextField(
              controller: attendLecture,
              keyboardType: TextInputType.number,
              maxLength: 2,
              style: GoogleFonts.lato(
                color: goldencolor,
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Total Attended Lecture ",
                hintStyle:
                    GoogleFonts.lato(color: Colors.white38, fontSize: 12),
              ),
            ),

            TextField(
              controller: subjectTlecture,
              keyboardType: TextInputType.number,
              maxLength: 2,
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'[0-9]{1,2}')),
              ],
              style: GoogleFonts.lato(
                color: goldencolor,
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Total Lecture in a Semester",
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
