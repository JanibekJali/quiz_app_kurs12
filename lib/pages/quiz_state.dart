import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/home_cubit.dart';

class QuizState extends StatefulWidget {
  const QuizState({Key? key}) : super(key: key);

  @override
  _QuizStateState createState() => _QuizStateState();
}

class _QuizStateState extends State<QuizState> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return AlertDialog(
          title: Text("Buttu!"),
          actions: [
            TextButton(
              onPressed: () {
                state.buutubu = false;
                // context.read<HomeCubit>().alertBloc();
                state.iconkalar = [];
                setState(() {});
              },
              child: const Text("Kaira bashta"),
            ),
          ],
        );
      },
    );
  }
}
