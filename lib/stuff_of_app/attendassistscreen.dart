import 'package:attend_assist/stuff_of_app/screens/AssignmentManager/mainassscreen.dart';
import 'package:attend_assist/stuff_of_app/screens/attendanceScreen/attendance_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../impstuff/colorss.dart';

class AttendAssist extends StatefulWidget {
  const AttendAssist({super.key});

  @override
  State<AttendAssist> createState() => _AttendAssistState();
}

class _AttendAssistState extends State<AttendAssist> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: blackcolor,
          actions: const [
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Icon(Icons.settings),
            )
          ],
          title: Center(
            child: RichText(
              text: TextSpan(
                text: 'A',
                style: GoogleFonts.lato(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: whitecolor),
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
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: whitecolor),
                  ),
                ],
              ),
            ),
          ),
          bottom: const TabBar(
            //isScrollable: true,
            indicatorColor: goldencolor,
            indicatorWeight: 5,
            tabs: [
              Tab(
                icon: Icon(
                  Icons.star,
                  color: goldencolor,
                ),
                text: 'Attendance',
              ),
              Tab(
                icon: Icon(Icons.checklist, color: goldencolor),
                text: 'Assignment',
              ),
            ],
          ),
          elevation: 20,
          titleSpacing: 20,
        ),
        body: const TabBarView(
          children: <Widget>[AttendacePage(), MainAssScreen()],
        ),
      ),
    );
  }
}
