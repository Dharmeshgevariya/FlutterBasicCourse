import 'package:flutter/material.dart';

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
      body: Center(
        child: Text("welcome s $d $days"),
      ),
      drawer: Drawer(
        backgroundColor: Colors.black,
        child: ListView(
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.amber,
              ),
              child: Text("Drawer Header"),
            ),
            Card(
              child: ListTile(
                leading: FlutterLogo(),
                title: Text('One-line with leading widget'),
              ),
            ),
            Card(
              child: ListTile(
                leading: FlutterLogo(size: 40.0),
                title: Text('Two-line ListTile'),
                subtitle: Text('Here is a second line'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
