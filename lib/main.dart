import 'package:flutter/material.dart';
import 'package:flutterdemo/home_page.dart';

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

    return MaterialApp(
        home:Homepage(),
        );
  }
}
