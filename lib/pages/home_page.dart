import 'package:flutter/material.dart';
import 'package:flutterdemo/models/catalog.dart';

import '../widgets/drawer.dart';
import '../widgets/item_widget.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);
  final int days = 69;
  final String name = "call me daddy";
  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(
      50,
      (index) => CatelogModel.items[0],
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "khareedi",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
            itemCount: dummyList.length,
            itemBuilder: (context, index) {
              return ItemWidget(
                item: dummyList[index],
              );
            }),
      ),
      drawer: MyDrawer(),
    );
  }
}
