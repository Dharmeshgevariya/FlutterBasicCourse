import 'package:flutter/material.dart';

import '../widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  final double days = 50.547;
  final String d = " hello wordld kem मपपा";

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
      body: Center(
        child: Text("welcome s $d $days"),
      ),
      drawer: MyDrawer(),
    );
  }
}
