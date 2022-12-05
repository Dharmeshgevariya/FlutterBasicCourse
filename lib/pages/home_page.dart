import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_catelog/models/productModel.dart';

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
        padding: const EdgeInsets.all(12),
        child: (ItemModel.items.isNotEmpty)
            ? GridView.builder(
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                    mainAxisExtent: 310.0),
                itemBuilder: (context, index) {
                  final item = ItemModel.items[index];
                  return Container(
                      decoration: BoxDecoration(
                          // boxShadow: [
                          //   BoxShadow(
                          //     color: Colors.black26,
                          //     offset: const Offset(
                          //       2.0,
                          //       2.0,
                          //     ),
                          //     blurRadius: 5.0,
                          //     spreadRadius: 2.0,
                          //   ), //BoxShadow
                          //   BoxShadow(
                          //     color: Colors.white,
                          //     offset: const Offset(0.0, 0.0),
                          //     blurRadius: 0.0,
                          //     spreadRadius: 0.0,
                          //   ),
                          // ],
                          borderRadius: BorderRadius.circular(12.0),
                          color: Color.fromARGB(255, 237, 237, 237)),
                      child: Column(children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(12),
                              topRight: Radius.circular(12)),
                          child: Image.network(
                            item.image,
                            height: 180,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(item.name,
                                        style: Theme.of(context)
                                            .textTheme
                                            .subtitle1!
                                            .merge(const TextStyle(
                                                fontWeight:
                                                    FontWeight.normal))),
                                    Text(item.comapny,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1!
                                            .merge(const TextStyle(
                                                fontWeight: FontWeight.normal,
                                                color: Color.fromARGB(
                                                    255, 173, 173, 173)))),
                                    Column(
                                      children: [
                                        Text(item.price.toString(),
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText2!
                                                .merge(const TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.green,
                                                ))),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        IconButton(
                                          onPressed: () {},
                                          icon: Icon(CupertinoIcons.heart),
                                        ),
                                        IconButton(
                                            onPressed: () {},
                                            icon: Icon(CupertinoIcons.cart)),
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            )),
                      ]));
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
