import 'package:flutter/material.dart';
import 'package:flutter_catelog/models/productModel.dart';

import '../widgets/ItemWidget.dart';
import '../widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  final double days = 50.547;
  final String d = " hello wordld kem choo";

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
