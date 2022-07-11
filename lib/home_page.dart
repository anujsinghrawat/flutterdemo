import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int days = 69;
    final String name = "call me daddy";

    return Scaffold(
      appBar: AppBar(
        title: Text("BDSM karna hai bhai"),
      ),
      body: Center(
          child: Container(
        child: Text("kya haal hai female grils aao $days kare or $name "),
      )),
      drawer: Drawer(),
    );
  }
}
