import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_app_kurs12/data/local_data/quiz_data.dart';
import 'package:quiz_app_kurs12/pages/cubit/home_cubit.dart';
import 'package:quiz_app_kurs12/pages/quiz_state.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    //  final state = context.read<HomeCubit>().state;
    log('build ===> ${count++}');
    return SafeArea(
      child: Scaffold(
        body: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                state.buutubu == true
                    ? AlertDialog(
                        title: Text("Buttu!"),
                        actions: [
                          TextButton(
                            onPressed: () {
                              // state.buutubu = false;

                              // context.watch<HomeCubit>().alertBloc();
                              BlocProvider.of<HomeCubit>(context, listen: false)
                                  .alertBloc();

                              // state.iconkalar = [];
                              // setState(() {});
                            },
                            child: const Text("Kaira bashta"),
                          ),
                        ],
                      )
                    : Text(
                        context.read<HomeCubit>().suroonuAlipKel(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                SizedBox(
                  height: 40,
                ),
                InkWell(
                  onTap: () {
                    context.read<HomeCubit>().userdinJoobu(true);
                  },
                  child: Container(
                    color: Color(0xff4CB050),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 100,
                        vertical: 10,
                      ),
                      child: Text(
                        'Tuura',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    context.read<HomeCubit>().userdinJoobu(false);
                  },
                  child: Container(
                    color: Colors.red,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 66,
                        vertical: 10,
                      ),
                      child: Text(
                        'Tuura emes',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
                Row(children: state.iconkalar!)
              ],
            );
          },
        ),
      ),
    );
  }

  // showAlert(BuildContext context) {
  //   // set up the button
  //   Widget okButton = TextButton(
  //     child: Text("OK"),
  //     onPressed: () {},
  //   );

  //   // set up the AlertDialog
  //   AlertDialog alert = AlertDialog(
  //     title: Text("Buttu!"),
  //     actions: [
  //       okButton,
  //     ],
  //   );

  //   // show the dialog
  //   showDialog(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return alert;
  //     },
  //   );
  // }
}
