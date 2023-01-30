import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
          backgroundColor: Colors.black,
          title: Center(
            child: RichText(
              text: TextSpan(
                text: 'A',
                style: GoogleFonts.lato(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
                children: <TextSpan>[
                  TextSpan(
                    text: 'tt',
                    style: GoogleFonts.lato(
                        fontWeight: FontWeight.bold,
                        color: const Color(0xffecae36),
                        fontSize: 30),
                  ),
                  TextSpan(
                    text: 'end Assist',
                    style: GoogleFonts.lato(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          bottom: const TabBar(
            //isScrollable: true,
            indicatorColor: Color(0xffecae36),
            indicatorWeight: 5,
            tabs: [
              Tab(
                icon: Icon(
                  Icons.star,
                  color: Color(0xffecae36),
                ),
                text: 'Attendance',
              ),
              Tab(
                icon: Icon(Icons.checklist, color: Color(0xffecae36)),
                text: 'Assignment',
              ),
            ],
          ),
          elevation: 20,
          titleSpacing: 20,
        ),
        body: const TabBarView(
          children: <Widget>[
            AttendanceFile(),
            AssignmentFile(),
          ],
        ),
      ),
    );
  }
}

class AssignmentFile extends StatelessWidget {
  const AssignmentFile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: const Center(
        child: Text(
          "HEY THERE!!",
          style: TextStyle(fontSize: 28, color: Color(0xffffffff)),
        ),
      ),
    );
  }
}

class AttendanceFile extends StatelessWidget {
  const AttendanceFile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: const Center(
        child: Text(
          "HEY Asshole!",
          style: TextStyle(fontSize: 28, color: Color(0xffffffff)),
        ),
      ),
    );
  }
}
