import 'package:flutter/material.dart';
import 'package:flutter_project_1/pages/home_page.dart';
import 'package:flutter_project_1/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: HomePage(),
      themeMode: ThemeMode.dark,
      theme: ThemeData(
          primarySwatch: Colors.blueGrey,
          primaryTextTheme: GoogleFonts.latoTextTheme(),
          fontFamily: GoogleFonts.poppins().fontFamily),
      //darkTheme: ThemeData(brightness: Brightness.dark),
      initialRoute: "/login",
      routes: {
        "/": (context) => LoginPage(),
        "/home": (context) => HomePage(),
        "/login": (context) => LoginPage(),
      },
    );
  }
}
