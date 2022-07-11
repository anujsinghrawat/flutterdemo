import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Text(
          "Mai hoon login page",
          style: TextStyle(
              fontSize: 20, color: Colors.green, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
