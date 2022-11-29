import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_catelog/cubit/intenet_cubit.dart';
import 'package:flutter_catelog/widgets/ProductAppBar.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => InternetCubit(),
      child: Scaffold(
          body: SafeArea(
              child: Center(
        child: BlocConsumer<InternetCubit, InternetState>(
          listener: (context, state) {
            if (state == InternetState.Gained) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text("Internet Connected!!!"),
                backgroundColor: Colors.green,
              ));
            } else if (state == InternetState.Lost) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text("Internet Dis-Connected!!!"),
                backgroundColor: Colors.red,
              ));
            }
          },
          builder: ((context, state) {
            if (state == InternetState.Gained) {
              return Text("Connected ");
            } else if (state == InternetState.Lost) {
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
