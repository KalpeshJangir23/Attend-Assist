import 'package:attend_assist/stuff_of_app/onetimescreens/loginscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Attend Assist',
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
