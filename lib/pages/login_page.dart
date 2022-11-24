import 'package:flutter/material.dart';
import 'package:flutter_catelog/utils/routs.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;

  final _formKey = GlobalKey<FormState>();

  moveHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(milliseconds: 700));
      await Navigator.pushNamed(context, MyRoutes.homeRoutes);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Image.asset(
                  "assets/image/P1.png", //image source undraw.com
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
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Mobile Number is empty";
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: "Enter Password ", labelText: "Password"),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Password cannot empty";
                          } else if (value.length < 6) {
                            return "Password must be in 6 digit";
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 20.0,
                        width: 100.0,
                      ),
                      Material(
                        color: Colors.deepPurple,
                        borderRadius:
                            BorderRadius.circular(changeButton ? 30 : 8),
                        child: InkWell(
                          onTap: () => moveHome(context),
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
                          ),
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
          ),
        ));
  }
}
