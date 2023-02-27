// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable, non_constant_identifier_names
// ignore_for_file: file_name

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../impstuff/colorss.dart';

class ContainerUi extends StatelessWidget {
  final int SubjectNumber;
  final int AttendedNumber;
  Function(BuildContext)? deletevar;
  Function(BuildContext)? plusincremnent;
  Function(BuildContext)? minusdecrement;

  ContainerUi({
    Key? key,
    required this.SubjectNumber,
    required this.deletevar,
    required this.plusincremnent,
    required this.minusdecrement,
    required this.AttendedNumber,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 150,
        width: MediaQuery.of(context).size.width,
        //color: textColor,
        decoration: BoxDecoration(
          color: goldencolor,
          borderRadius: BorderRadius.circular(12),
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
                      width: 150,
                      height: 40,
                      decoration: BoxDecoration(
                        color: goldencolor,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      //// subject enter text field

                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          style: GoogleFonts.lato(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: blackcolor,
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Add Subject Name",
                            hintStyle: GoogleFonts.lato(
                                color: Colors.white38, fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                ///
                // Subject percentage
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Container(
                    height: 40,
                    width: 90,
                    decoration: BoxDecoration(
                        color: blackcolor,
                        borderRadius: BorderRadius.circular(30)),
                    child: Center(child: GestureDetector()),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: IconButton(
                    onPressed: () => deletevar,
                    icon: Icon(
                      Icons.delete_forever,
                      color: Colors.red.shade500,
                      size: 25,
                    ),
                  ),
                ),
              ],
            ),

            ///
            // Divider
            const Divider(
              color: blackcolor,
              thickness: 2,
            ),
            Row(
              children: [
                ///
// incremental container
                Padding(
                  padding: const EdgeInsets.all(2.0),
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
                          "$AttendedNumber",
                          style: GoogleFonts.averiaGruesaLibre(
                              color: goldencolor,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),

                ///
                // slash text
                Text(
                  "/",
                  style: GoogleFonts.averiaGruesaLibre(
                      fontSize: 45, color: blackcolor),
                ),

                // User enter text container
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: blackcolor,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: whitecolor,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "$SubjectNumber",
                        style: GoogleFonts.lato(
                            fontWeight: FontWeight.bold, color: whitecolor),
                      ),
                    ),
                  ),
                ),
                ////
                const Spacer(),

                ///
                // plus button
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () => plusincremnent,
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
                ),

                ///
                // minus button
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () => minusdecrement,
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
