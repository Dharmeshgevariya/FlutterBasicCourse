import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String imageUrl =
        "https://media-exp1.licdn.com/dms/image/C5103AQEkrE0TQYnM0A/profile-displayphoto-shrink_800_800/0/1580704448624?e=1674691200&v=beta&t=vjsrotl6Xd2OMhObe_j2PzlPLZId7gQBZUrLLhNz0h8";
    return Drawer(
      child: Container(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                curve: Cubic(10.0, 12.0, 15.0, 45.0),
                padding: EdgeInsets.zero,
                decoration: BoxDecoration(color: Colors.deepPurple),
                child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  accountName: Text("Dharmesh Gevariya"),
                  accountEmail: Text("gevariya.d@gmail.com"),
                  currentAccountPicture:
                      CircleAvatar(backgroundImage: NetworkImage(imageUrl)),
                )),
            ListTile(
                leading: Icon(
                  CupertinoIcons.home,
                  color: Colors.black87,
                ),
                title: Text(
                  "Home",
                  textScaleFactor: 1.2,
                  style: TextStyle(color: Colors.black87),
                )),
            ListTile(
                leading: Icon(
                  CupertinoIcons.profile_circled,
                  color: Colors.black87,
                ),
                title: Text(
                  "Profile",
                  textScaleFactor: 1.2,
                  style: TextStyle(color: Colors.black87),
                )),
            ListTile(
                leading: Icon(
                  CupertinoIcons.cart,
                  color: Colors.black87,
                ),
                title: Text(
                  "POS",
                  textScaleFactor: 1.2,
                  style: TextStyle(color: Colors.black87),
                )),
            ListTile(
                leading: Icon(
                  CupertinoIcons.mail,
                  color: Colors.black87,
                ),
                title: Text(
                  "Mail",
                  textScaleFactor: 1.2,
                  style: TextStyle(color: Colors.black87),
                )),
            ListTile(
                leading: Icon(
                  CupertinoIcons.chart_bar_square,
                  color: Colors.black87,
                ),
                title: Text(
                  "Report",
                  textScaleFactor: 1.2,
                  style: TextStyle(color: Colors.black87),
                )),
            ListTile(
                leading: Icon(
                  CupertinoIcons.arrow_up_doc,
                  color: Colors.black87,
                ),
                title: Text(
                  "Sales",
                  textScaleFactor: 1.2,
                  style: TextStyle(color: Colors.black87),
                )),
            ListTile(
                leading: Icon(
                  CupertinoIcons.arrow_down_doc,
                  color: Colors.black87,
                ),
                title: Text(
                  "Purchase",
                  textScaleFactor: 1.2,
                  style: TextStyle(color: Colors.black87),
                )),
            ListTile(
                leading: Icon(
                  CupertinoIcons.money_yen_circle,
                  color: Colors.black87,
                ),
                title: Text(
                  "About",
                  textScaleFactor: 1.2,
                  style: TextStyle(color: Colors.black87),
                )),
            ListTile(
                leading: Icon(
                  CupertinoIcons.phone,
                  color: Colors.black87,
                ),
                title: Text(
                  "Contact",
                  textScaleFactor: 1.2,
                  style: TextStyle(color: Colors.black87),
                )),
            ListTile(
                leading: Icon(
                  CupertinoIcons.bell,
                  color: Colors.black87,
                ),
                title: Text(
                  "Notification",
                  textScaleFactor: 1.2,
                  style: TextStyle(color: Colors.black87),
                )),
          ],
        ),
      ),
    );
  }
}



// backgroundColor: Colors.black,
//         child: ListView(
//           children: const <Widget>[
//             DrawerHeader(
//               decoration: BoxDecoration(
//                 color: Colors.amber,
//               ),
//               child: Text("Drawer Header"),
//             ),
//             Card(
//               child: ListTile(
//                 leading: FlutterLogo(),
//                 title: Text('One-line with leading widget'),
//               ),
//             ),
//             Card(
//               child: ListTile(
//                 leading: FlutterLogo(size: 40.0),
//                 title: Text('Two-line ListTile'),
//                 subtitle: Text('Here is a second line'),
//               ),
//             ),
//           ],
//         ),
     