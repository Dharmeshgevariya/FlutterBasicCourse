import 'package:flutter/material.dart';
import 'package:flutter_catelog/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pages/homePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          fontFamily: GoogleFonts.openSans().fontFamily),
      themeMode: ThemeMode.light,
      initialRoute: "/login",
      routes: {
        "/": (context) => LoginPage(),
        "/home": (context) => HomePage(),
        "/login": (context) => LoginPage()
      },
    );
  }
}
