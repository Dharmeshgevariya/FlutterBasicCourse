import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_catelog/pages/Login/bloc/sign_in_bloc.dart';
import 'package:flutter_catelog/pages/Login/bloc/sign_in_event.dart';

import 'bloc/sign_in_state.dart';

class LoginBloC extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: ListView(
          children: [
            BlocBuilder<SignInBloc, SignInState>(
              builder: (context, state) {
                if (state is SignInErrorState) {
                  return Text(
                    state.errorMessage,
                    style: TextStyle(color: Colors.red),
                  );
                } else {
                  return Container();
                }
              },
            ),
            TextField(
              controller: emailController,
              onChanged: (val) {
                BlocProvider.of<SignInBloc>(context).add(SignInTextChangedEvent(
                    emailController.text, passwordController.text));
              },
              decoration: InputDecoration(
                hintText: "Email Address",
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: passwordController,
              onChanged: (val) {
                BlocProvider.of<SignInBloc>(context).add(SignInTextChangedEvent(
                    emailController.text, passwordController.text));
              },
              decoration: InputDecoration(hintText: "Password"),
            ),
            SizedBox(
              height: 20,
            ),
            BlocBuilder<SignInBloc, SignInState>(
              builder: (context, state) {
                if (state is SignInLodingState) {
                  return CupertinoButton(
                    child: CircularProgressIndicator(
                      strokeWidth: 1,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                    color: Colors.deepPurple,
                  );
                }
                return CupertinoButton(
                  child: Text("Sign In"),
                  onPressed: () {
                    if (state is SignInvalidState) {
                      BlocProvider.of<SignInBloc>(context).add(
                          SignInSubmittedEvent(
                              emailController.text, passwordController.text));
                    }
                  },
                  color: (state is SignInvalidState)
                      ? Colors.deepPurple
                      : Colors.deepOrange,
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
