import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_catelog/blocs/internet_blocs/internet_event.dart';
import 'package:flutter_catelog/blocs/internet_blocs/internet_state.dart';
import 'package:flutter_catelog/widgets/ProductAppBar.dart';

import '../blocs/internet_blocs/internet_blocs.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => InternetBloc(),
      child: Scaffold(
          body: SafeArea(
              child: Center(
        child: BlocConsumer<InternetBloc, InternetState>(
          listener: (context, state) {
            if (state is InternetGainedState) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text("Internet Connected!!!"),
                backgroundColor: Colors.green,
              ));
            } else if (state is InternetLostState) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text("Internet Dis-Connected!!!"),
                backgroundColor: Colors.red,
              ));
            }
          },
          builder: ((context, state) {
            if (state is InternetGainedState) {
              return Text("Connected ");
            } else if (state is InternetLostState) {
              return Text("Not Conneted");
            } else {
              return Text("Loadding!!!!!..");
            }
          }),
        ),
      ))),
    );
  }
}
