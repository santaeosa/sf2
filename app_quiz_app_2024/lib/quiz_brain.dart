import 'package:app_quiz_app_2024/question.dart';

class QuizBrain {
  final List<Question> _questions = [
    Question(questionText: "¿El hombre llego a la Luna?", questionAnswer: true),
    Question(
        questionText: "¿El día miércoles tenemos clases de Programación Movil?",
        questionAnswer: true),
    Question(questionText: "¿Ikaro llego al Sol?", questionAnswer: false),
    Question(
        questionText: "¿Goku es el Guerrero mas poderos del Universo?",
        questionAnswer: true),
  ];

  int _questionNumber = 0;

  String getQuestionText() {
    return _questions[_questionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return _questions[_questionNumber].questionAnswer;
  }

  nextQuestion() {
    if (_questionNumber < _questions.length - 1) {
      _questionNumber++;
    }
  }

  bool isFinished() {
    if (_questionNumber >= _questions.length - 1) {
      return true;
    }
    return false;
  }

  void restart() {
    _questionNumber = 0;
  }
}
