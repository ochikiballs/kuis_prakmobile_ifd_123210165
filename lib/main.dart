import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:kuis_prakmobile_ifd_rosymaharani/pages/loginpage.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Book Store App',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white, // Scaffold background color
        appBarTheme: AppBarTheme(
          backgroundColor: HexColor('#E493B3'), // App bar background color
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(HexColor('#E493B3')), // Button color
          ),
        ),
      ),
      home: const LoginPage(),
    );
  }
}
