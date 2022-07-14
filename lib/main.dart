import 'package:flutter/material.dart';
import 'package:flutterdemo/pages/home_page.dart';
import 'package:flutterdemo/pages/login_page.dart';
import 'package:flutterdemo/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // double dsi = 6.50;
    // bool isMale = true;
    // num temp = 30.5;
    // temp = 30;
    // var day = "Tuesday";
    // const pi = 3.14;

    
    bringMaal(ruppes: 1000);
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: "MyRoutes.homeRoute",
      routes: {
        "/":(context) => LoginPage(),
        MyRoutes.loginRoute : (context) => new LoginPage(),
        MyRoutes.homeRoute : (context) => new Homepage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }

  bringMaal({bool paper = true, int ruppes = 100}) {}
}
