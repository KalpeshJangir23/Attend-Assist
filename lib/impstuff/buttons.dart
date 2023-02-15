// ignore_for_file: must_be_immutable

import 'package:attend_assist/impstuff/colorss.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  VoidCallback onPressed;
  MyButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
      child: MaterialButton(
        onPressed: onPressed,
        color: goldencolor,
        child: Text(text),
      ),
    );
  }
}
