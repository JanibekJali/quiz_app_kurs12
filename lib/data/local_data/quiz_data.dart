import 'dart:developer';

import 'package:quiz_app_kurs12/models/questions_model.dart';

class QuizData {
  int index = 0;
  static List<QuestionModel> suroolorJooptor = [
    QuestionModel(
      suroolor: 'Kyrgyzstanda 7 oblast barby?',
      jooptor: true,
    ),
    QuestionModel(
      suroolor: 'Kyrgyzstandyn borboru Oshpu?',
      jooptor: false,
    ),
    QuestionModel(
      suroolor: 'Naryn en usun daryaby?',
      jooptor: true,
    ),
  ];

  String suroonuAlipKel() {
    if (index < suroolorJooptor.length) {
      return suroolorJooptor[index].suroolor!;
    } else {
      return '';
    }
  }

  bool joopAlipKel() {
    if (index < suroolorJooptor.length) {
      return suroolorJooptor[index].jooptor!;
    } else {
      return false;
    }
  }

  void otkoz() {
    index++;
  }

  void kairabashta() {
    index = 0;
  }
}

final QuizData quizData = QuizData();
