import 'package:flutter/material.dart';
import 'package:flutter_catelog/utils/routs.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/image/P1.png",
                height: 300.0,
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 20.0,
                width: 100.0,
              ),
              Text("Welcome $name", style: TextStyle(fontSize: 40)),
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
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
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
                    InkWell(
                      onTap: () async {
                        setState(() {
                          changeButton = true;
                        });
                        await Future.delayed(Duration(milliseconds: 700));
                        Navigator.pushNamed(context, MyRoutes.homeRoutes);
                      },
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 700),
                        width: changeButton ? 50 : 420,
                        height: 50,
                        alignment: Alignment.center,
                        child: changeButton
                            ? Icon(
                                Icons.done,
                                color: Colors.white,
                              )
                            : Text(
                                "Login",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                        decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius:
                                BorderRadius.circular(changeButton ? 30 : 8)),
                      ),
                    ),
                    // ElevatedButton(
                    //     onPressed: () {
                    //       Navigator.pushNamed(context, MyRoutes.homeRoutes);
                    //     },
                    //     child: Text("Login"),
                    //     style:
                    //         TextButton.styleFrom(minimumSize: Size(420, 40))),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
