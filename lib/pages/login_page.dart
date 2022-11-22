import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Column(
          children: [
            Image.asset(
              "assets/image/P1.png",
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20.0,
              width: 100.0,
            ),
            Text("Welcome", style: TextStyle(fontSize: 40)),
            SizedBox(
              height: 20.0,
              width: 100.0,
            ),
            Padding(
              padding: const EdgeInsets.all(28),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter Mobile Number",
                        labelText: "MobileNumber"),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Enter Password ", labelText: "Password"),
                  ),
                  SizedBox(
                    height: 20.0,
                    width: 100.0,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        print("hi welcome to button onPress");
                      },
                      child: Text("Login"))
                ],
              ),
            )
          ],
        ));
  }
}
