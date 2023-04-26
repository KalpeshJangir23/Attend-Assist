// ignore_for_file: file_names

import 'package:attend_assist/impstuff/colorss.dart';
import 'package:attend_assist/stuff_of_app/attendassistscreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: RichText(
            text: TextSpan(
              text: 'A',
              style: GoogleFonts.lato(
                  fontSize: 25, fontWeight: FontWeight.bold, color: whitecolor),
              children: <TextSpan>[
                TextSpan(
                  text: 'tt',
                  style: GoogleFonts.lato(
                      fontWeight: FontWeight.bold,
                      color: goldencolor,
                      fontSize: 30),
                ),
                TextSpan(
                  text: 'end Assist',
                  style: GoogleFonts.lato(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: whitecolor),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Container(
        color: Colors.black,
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  "assets/2.png",
                  height: 500,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AttendAssist()),
                  );
                },
                icon: Image.asset(
                  "assets/3.png",
                  width: 50,
                ),
                label: Row(
                  children: [
                    Text(
                      "Continue",
                      style: GoogleFonts.ubuntu(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: blackcolor,
                      ),
                    ),
                    Spacer(),
                    const Icon(
                      Icons.arrow_forward_ios,
                      color: blackcolor,
                    )
                  ],
                ),
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(25, 60),
                  backgroundColor: whitecolor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
