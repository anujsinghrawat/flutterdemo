import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterdemo/models/catalog.dart';
import 'dart:convert';
import '../widgets/drawer.dart';
import '../widgets/item_widget.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final int days = 69;

  final String name = "call me daddy";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    var catalogJson = await rootBundle.loadString("assets/files/catalog.json");
    var decodeData = jsonDecode(catalogJson);
    var productsData = decodeData["products"];
    List<Item> list = List.from(productsData).map<Item>((Item) => Item.fromMap(Item)).toList();
    print(catalogJson);
  }

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
