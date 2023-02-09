import 'package:attend_assist/impstuff/colorss.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContainerUi extends StatefulWidget {
  const ContainerUi({super.key});

  @override
  State<ContainerUi> createState() => _ContainerUiState();
}

class _ContainerUiState extends State<ContainerUi> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 320,
      //color: textColor,
      decoration: BoxDecoration(
        color: goldencolor,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 10,
            offset: const Offset(0, 3),
          )
        ],
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
                      color: lightblackcolor,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: TextField(
                      style: GoogleFonts.averiaGruesaLibre(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: goldencolor),
                      decoration: const InputDecoration(
                        hintText: "   enter Subject",
                        hintStyle:
                            TextStyle(fontSize: 15, color: Colors.white54),
                        border: InputBorder.none,
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
                      color: lightblackcolor,
                      borderRadius: BorderRadius.circular(30)),
                  child: Center(child: GestureDetector()),
                ),
              ),
            ],
          ),
          const Divider(
            color: lightblackcolor,
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
                    color: lightblackcolor,
                    shape: BoxShape.circle,
                    border: Border.all(color: whitecolor),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        '75',
                        style: GoogleFonts.averiaGruesaLibre(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
              Text(
                "/",
                style: GoogleFonts.averiaGruesaLibre(
                    fontSize: 45, color: goldencolor),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: lightblackcolor,
                    shape: BoxShape.circle,
                    border: Border.all(color: whitecolor),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 1, bottom: 2),
                    child: Center(
                      child: TextField(
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        style: GoogleFonts.averiaGruesaLibre(
                            color: whitecolor,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                        decoration:
                            const InputDecoration(border: InputBorder.none),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 40,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: lightblackcolor,
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
                onTap: () {},
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: lightblackcolor,
                    shape: BoxShape.circle,
                    border: Border.all(color: whitecolor),
                  ),
                  child: const Icon(
                    Icons.remove,
                    color: lightblackcolor,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
