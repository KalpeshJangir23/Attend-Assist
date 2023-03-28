// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable, non_constant_identifier_names
// ignore_for_file: file_name

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../impstuff/colorss.dart';

class ContainerUi extends StatelessWidget {
  final String subjectName;
  final String totalsubjectlecture;
  final String attendance;

  Function(BuildContext)? deletevar;
  Function(BuildContext)? plusincremnent;
  Function(BuildContext)? minusdecrement;

  ContainerUi({
    Key? key,
    required this.totalsubjectlecture,
    required this.deletevar,
    required this.plusincremnent,
    required this.minusdecrement,
    required this.attendance,
    required this.subjectName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 15, right: 15, top: 8.0, bottom: 8.0),
      child: Material(
        elevation: 5.0,
        color: blackcolor,
        child: Container(
          height: 190,
          width: MediaQuery.of(context).size.width,
          //color: textColor,
          decoration: BoxDecoration(
            color: goldencolor,
            borderRadius: BorderRadius.circular(12),
            shape: BoxShape.rectangle,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 180,
                    height: 75,
                    decoration: BoxDecoration(
                      color: goldencolor,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    //// subject enter text field

                    child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          subjectName,
                          softWrap: true,
                          style: GoogleFonts.lato(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: whitecolor,
                          ),
                        )),
                  ),

                  ///
                  // Subject percentage
                  const SizedBox(
                    width: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Container(
                      height: 40,
                      width: 90,
                      decoration: BoxDecoration(
                          color: blackcolor,
                          borderRadius: BorderRadius.circular(30)),
                      child: Center(
                        child: Text(
                          "0",
                          //totalattendance,
                          style: GoogleFonts.lato(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: whitecolor,
                          ),
                        ),
                      ),
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
                thickness: 5,
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  ///
                  // incremental container
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: blackcolor,
                        shape: BoxShape.circle,
                        border: Border.all(color: blackcolor),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            attendance,
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
                          color: blackcolor,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          totalsubjectlecture,
                          style: GoogleFonts.lato(
                              fontWeight: FontWeight.bold,
                              color: whitecolor,
                              fontSize: 25),
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
                          border: Border.all(color: blackcolor),
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
                          border: Border.all(color: blackcolor),
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
      ),
    );
  }
}
