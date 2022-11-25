import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_catelog/models/productModel.dart';

import '../widgets/ItemWidget.dart';
import '../widgets/drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final double days = 50.547;

  final String d = " hello wordld kem choo";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    final itemjson = await rootBundle.loadString("assets/files/item.json");
    final decodeData = jsonDecode(itemjson);
    final itemsData = decodeData["items"];
    print(itemsData);
  }

  @override
  Widget build(BuildContext context) {
    // final dummylist = List.generate(10, (index) => ItemModel.items[index]);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 5.0,
        title: const Text(
          'Token App',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: ListView.builder(
            itemCount: ItemModel.items.length,
            itemBuilder: (context, index) {
              return ItemWidget(
                item: ItemModel.items[index],
              );
            }),
      ),
      drawer: MyDrawer(),
    );
  }
}
