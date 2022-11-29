import 'package:flutter/material.dart';
import 'package:flutter_catelog/pages/login_page.dart';
import 'package:flutter_catelog/pages/product_page.dart';
import 'package:flutter_catelog/utils/routs.dart';
import 'package:flutter_catelog/widgets/themes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.DarkTheme(context),
      themeMode: ThemeMode.light,
      initialRoute: MyRoutes.productRoutes,
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => ProductPage(),
        MyRoutes.homeRoutes: (context) => HomePage(),
        MyRoutes.loginRoutes: (context) => LoginPage(),
        MyRoutes.productRoutes: (context) => ProductPage()
      },
    );
  }
}
