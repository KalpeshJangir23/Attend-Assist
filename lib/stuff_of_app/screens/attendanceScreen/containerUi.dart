// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable, non_constant_identifier_names, no_leading_underscores_for_local_identifiers
// ignore_for_file: file_name

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../impstuff/colorss.dart';

// int number = 0;
// int _totalLectures = 0;
// double Totalpercentage = 0.0;

class ContainerUi extends StatefulWidget {
  final String subjectName;
  Function(BuildContext)? deletevar;

  ContainerUi({
    Key? key,
    required this.deletevar,
    required this.subjectName,
  }) : super(key: key);

  @override
  State<ContainerUi> createState() => _ContainerUiState();
}

class _ContainerUiState extends State<ContainerUi> {
  int number = 0;
  int _totalLectures = 0;
  double Totalpercentage = 0.0;
  @override
  void initState() {
    super.initState();
    number = 0;
    _totalLectures = _totalLectures;
    Totalpercentage = Totalpercentage;
  }

  @override
  Widget build(BuildContext context) {
    void _incrementNumber() {
      setState(() {
        print("yes increment work");
        print(number);
        if (number == 0 && _totalLectures == 0) {
          number = _totalLectures;
          Fluttertoast.showToast(
              msg: "Change the value of the totalLectures",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.BOTTOM,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.red,
              textColor: Colors.white,
              fontSize: 16.0);
          number++;
        } else if (_totalLectures == number &&
            _totalLectures != 0 &&
            number != 0) {
          Fluttertoast.showToast(
              msg: "Bro Please attend maths Lectures",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.BOTTOM,
              timeInSecForIosWeb: 1,
              backgroundColor: lightblackcolor,
              textColor: Colors.white,
              fontSize: 16.0);
        } else {
          number++;
        }
      });
    }

    void _decrementNumber() {
      setState(() {
        print("yes decrement work");
        if (number <= 0) {
          number = 0;
          Fluttertoast.showToast(
              msg: "Value cannot be negative",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.BOTTOM,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.red,
              textColor: Colors.white,
              fontSize: 16.0);
        } else {
          number--;
        }
      });
    }

    void _onTotalLecturesChanged(String value) {
      setState(() {
        print("yes onchangework work");
        _totalLectures = int.tryParse(value) ?? 0;
      });
    }

    double calculatePercentage(int number, int totalLectures) {
      print("calculatePercentage called");
      double percentage = 0.0;
      if (totalLectures == 0) {
        percentage = 0.0;
      } else {
        percentage = (number / totalLectures) * 100;
        if (percentage > 100) {
          percentage = 100;
        }
      }
      return percentage;
    }

    double Totalpercentage = number / _totalLectures * 100;

    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: blackcolor,
            offset: Offset(0, 3),
            blurRadius: 15,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Padding(
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
                            widget.subjectName,
                            softWrap: true,
                            style: GoogleFonts.lato(
                              fontSize: 32 -
                                  (0.5 * widget.subjectName.length).toDouble(),
                              fontWeight: FontWeight.bold,
                              color: whitecolor,
                            ),
                          )),
                    ),

                    ///
                    // Subject percentage
                    Spacer(),
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
                            '${calculatePercentage(number, _totalLectures).toStringAsFixed(2)}%',
                            //widget.percentageattendace,
                            //totalattendance,
                            style: GoogleFonts.lato(
                              fontSize: 18,
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
                        onPressed: () {
                          widget.deletevar!;
                        },
                        icon: Icon(
                          Icons.delete_forever,
                          color: Colors.red.shade500,
                          size: 25,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    )
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
                  crossAxisAlignment: CrossAxisAlignment.center,
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
                        child: Center(
                          child: Text(
                            '$number',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.lato(
                              color: whitecolor,
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
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
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(8, 20, 8, 3),
                          child: Center(
                            child: TextField(
                              cursorColor: whitecolor,
                              textAlign: TextAlign.center,
                              inputFormatters: [
                                FilteringTextInputFormatter.allow(
                                    RegExp(r'[0-9]')), // Only allow digits
                                TextInputFormatter.withFunction(
                                    (oldValue, newValue) {
                                  // Prevent negative values
                                  if (newValue.text.isNotEmpty &&
                                      double.tryParse(newValue.text) != null &&
                                      double.parse(newValue.text) < 0) {
                                    return oldValue;
                                  }
                                  return newValue;
                                }),
                              ],
                              keyboardType: TextInputType.number,

                              //textAlign: TextAlign.center,
                              style: GoogleFonts.ubuntu(
                                  color: whitecolor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25),
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "0",
                                  hintStyle: GoogleFonts.ubuntu(
                                      color: goldencolor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25)),
                              onChanged: _onTotalLecturesChanged,
                            ),
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
                        onTap: _incrementNumber,
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
                        onTap: _decrementNumber,
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
                    ),
                    const SizedBox(
                      width: 10,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
