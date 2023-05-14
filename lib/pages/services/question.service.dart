import 'package:quiz_app_kurs12/data/local_data/quiz_data.dart';

class QuestionService {
  static String suroonuAlipKel(int index) {
    if (index < quizData.suroolorJooptor.length) {
      return quizData.suroolorJooptor[index].suroolor!;
    } else {
      return '';
    }
  }

  static bool joopAlipKel(int index) {
    if (index < quizData.suroolorJooptor.length) {
      return quizData.suroolorJooptor[index].jooptor!;
    } else {
      return false;
    }
  }
}
