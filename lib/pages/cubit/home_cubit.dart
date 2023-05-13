import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app_kurs12/data/local_data/quiz_data.dart';

import 'package:quiz_app_kurs12/models/questions_model.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeState(iconkalar: []));

  void alertBloc() {
    emit(state.copyWith(buutubu: state.buutubu = false));

    // context.read<HomeCubit>().falseKyl();
    // context.read<HomeCubit>().iconkalardyTazala();
    emit(state.copyWith(iconkalar: state.iconkalar = []));
    // state.iconkalar = [];
    kairabashta();
    // setState(() {});
  }

  // void iconkalardyTazala() {
  //   emit(
  //     state.copyWith(iconkalar: state.iconkalar = []),
  //   );
  // }

  String suroonuAlipKel() {
    if (state.index < quizData.suroolorJooptor.length) {
      return quizData.suroolorJooptor[state.index].suroolor!;
    } else {
      return '';
    }
  }

  bool joopAlipKel() {
    if (state.index < quizData.suroolorJooptor.length) {
      return quizData.suroolorJooptor[state.index].jooptor!;
    } else {
      return false;
    }
  }

  void otkoz() {
    emit(state.copyWith(index: state.index + 1));
  }

  void falseKyl() {
    emit(state.copyWith(buutubu: state.buutubu = true));
  }

  void kairabashta() {
    emit(state.copyWith(index: state.index = 0));
  }

  void userdinJoobu(bool userJoobu) {
    final jooptor = joopAlipKel();
    final list = state.iconkalar!;

    if (userJoobu == jooptor) {
      list.add(
        Icon(
          Icons.check,
          size: 50,
          color: Colors.green,
        ),
      );

      emit(state.copyWith(iconkalar: list));
    } else {
      list.add(
        Icon(
          Icons.close,
          size: 50,
          color: Colors.red,
        ),
      );
      emit(state.copyWith(iconkalar: list));
    }
    otkoz();
    if (suroonuAlipKel() == '') {
      emit(state.copyWith(buutubu: state.buutubu = true));
    }
  }
}
