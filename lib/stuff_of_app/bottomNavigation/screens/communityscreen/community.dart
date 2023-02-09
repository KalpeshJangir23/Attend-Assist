import 'package:attend_assist/impstuff/colorss.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CommunityPage extends StatefulWidget {
  const CommunityPage({super.key});

  @override
  State<CommunityPage> createState() => _CommunityPageState();
}

class _CommunityPageState extends State<CommunityPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Community",
          style: GoogleFonts.lato(
              fontSize: 24, fontWeight: FontWeight.bold, color: goldencolor),
        ),
      ),
      body: Container(
        color: blackcolor,
        width: double.infinity,
        height: double.infinity,
      ),
    );
  }
}
