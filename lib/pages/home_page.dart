import 'package:flutter/material.dart';

import '../widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  final double days = 50.547;
  final String d = " hello wordld kem choo";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 5.0,
        title: const Text(
          'Token App',
        ),
      ),
      body: Container(
        constraints: BoxConstraints(
            minHeight: 70, maxHeight: 300, maxWidth: 300, minWidth: 70),
        color: Colors.green,
        child: Container(
            height: 250,
            width: 250,
            color: Colors.red,
            child: Text(context.runtimeType.toString())),
      ),
      drawer: MyDrawer(),
    );
  }
}
