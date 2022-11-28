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
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 5));
    final itemjson = await rootBundle.loadString("assets/files/item.json");
    final decodeData = jsonDecode(itemjson);
    final itemsData = decodeData["items"];
    ItemModel.items =
        List.from(itemsData).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});
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
        child: (ItemModel.items.isNotEmpty)
            ? GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                ),
                itemBuilder: (context, index) {
                  final item = ItemModel.items[index];
                  return Card(
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      child: GridTile(
                        header: Container(
                          child: Text(item.name,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15)),
                          padding: const EdgeInsets.all(10),
                          decoration:
                              BoxDecoration(color: Colors.deepPurple[50]),
                        ),
                        child: Image.network(item.image),
                        footer: Container(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            item.price.toString(),
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17),
                          ),
                          padding: const EdgeInsets.all(5),
                        ),
                      ));
                },
                itemCount: ItemModel.items.length,
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
      drawer: MyDrawer(),
    );
  }
}
