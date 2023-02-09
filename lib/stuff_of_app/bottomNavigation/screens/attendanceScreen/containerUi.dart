// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../impstuff/colorss.dart';

class ContainerUi extends StatefulWidget {
  const ContainerUi({super.key});

  @override
  State<ContainerUi> createState() => _ContainerUiState();
}

class _ContainerUiState extends State<ContainerUi> {
  int plus = 0;
  int primaryresult = 0;

  void _plusincremnent() {
    setState(() {
      plus++;
    });
  }

  void _minusdecremnent() {
    setState(() {
      if (plus == 0) {
        plus = 0;
      } else {
        plus--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 150,
        width: 320,
        //color: textColor,
        decoration: BoxDecoration(
          color: goldencolor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                      width: 190,
                      height: 40,
                      decoration: BoxDecoration(
                        color: goldencolor,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          style: GoogleFonts.lato(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: blackcolor),
                          decoration: const InputDecoration(
                            hintText: "enter Subject.",
                            hintStyle:
                                TextStyle(fontSize: 15, color: Colors.white70),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Container(
                    height: 40,
                    width: 90,
                    decoration: BoxDecoration(
                        color: blackcolor,
                        borderRadius: BorderRadius.circular(30)),
                    child: Center(child: GestureDetector()),
                  ),
                ),
              ],
            ),
            const Divider(
              color: blackcolor,
              thickness: 2,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: blackcolor,
                      shape: BoxShape.circle,
                      border: Border.all(color: whitecolor),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Text(
                          '$plus',
                          style: GoogleFonts.averiaGruesaLibre(
                              color: goldencolor,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
                Text(
                  "/",
                  style: GoogleFonts.averiaGruesaLibre(
                      fontSize: 45, color: blackcolor),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: blackcolor,
                      shape: BoxShape.circle,
                      border: Border.all(color: whitecolor),
                    ),
                    child: Center(
                      child: TextField(
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        style: GoogleFonts.averiaGruesaLibre(
                            color: goldencolor,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                        decoration:
                            const InputDecoration(border: InputBorder.none),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 40,
                ),
                GestureDetector(
                  onTap: () => _plusincremnent(),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: blackcolor,
                      shape: BoxShape.circle,
                      border: Border.all(color: whitecolor),
                    ),
                    child: const Icon(
                      Icons.add,
                      color: whitecolor,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                GestureDetector(
                  onTap: () => _minusdecremnent(),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: blackcolor,
                      shape: BoxShape.circle,
                      border: Border.all(color: whitecolor),
                    ),
                    child: const Icon(
                      Icons.remove,
                      color: whitecolor,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
