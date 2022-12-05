import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_catelog/pages/Login/LoginBloC.dart';

import 'Login/bloc/sign_in_bloc.dart';

class WelcomPage extends StatelessWidget {
  const WelcomPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Welcom to Login With Bloc")),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: CupertinoButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => BlocProvider(
                              create: (context) => SignInBloc(),
                              child: LoginBloC(),
                            )));
              },
              color: Colors.blueGrey,
              child: Text("Sign With EMail"),
            ),
          ),
        ),
      ),
    );
  }
}
