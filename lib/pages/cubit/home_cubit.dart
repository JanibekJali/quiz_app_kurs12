import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app_kurs12/pages/services/question.service.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeState(iconkalar: []));

  void alertBloc() {
    emit(state.copyWith(buutubu: false, iconkalar: [], index: 0));

    // setState(() {});
  }

  String suroonuAlipKel() {
    return QuestionService.suroonuAlipKel(state.index);
  }

  bool joopAlipKel() {
    return QuestionService.joopAlipKel(state.index);
  }

  void otkoz() {
    emit(state.copyWith(index: state.index + 1));
  }

  void falseKyl() {
    emit(state.copyWith(buutubu: true));
  }

  // void kairabashta() {
  //   emit(state.copyWith(index: 0));
  // }

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
      emit(state.copyWith(buutubu: true));
    }
  }
}
